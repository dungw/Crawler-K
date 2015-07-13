<?php
/**
 * Created by PhpStorm.
 * User: dung.vuong
 * Date: 7/9/2015
 * Time: 2:16 PM
 */
namespace core;

use core\db_query;
use core\CrReflectionUtil;
use core\CrArrayUtil;

abstract class CrModel
{
    private $_id;
    private $_idColumn;
    private $_table;
    private $_propMap = array();

    public function getTable()
    {
        return $this->_table;
    }

    public function __set($key, $value)
    {
        $this->_propMap[$key] = $value;
    }

    public function __get($key)
    {
        return $this->_propMap[$key];
    }

    public function __isset($key)
    {
        return isset($this->_propMap[$key]);
    }

    public function __unset($key)
    {
        unset($this->_propMap[$key]);
    }

    public function insert()
    {
        if (!empty($this->_propMap)) {
            $columns = array_keys($this->_propMap);
            $values = array_values($this->_propMap);

            $sql = "INSERT INTO ". $this->_table ."(". implode(',', $columns) .") VALUES(". implode(',', $values) .")";
            $db = new db_execute_return();
            $returnID = $db->db_execute($sql);
            unset($db);
            return $returnID;
        }
        return null;
    }

    public function update()
    {
        if (isset($this->_id) && !empty($this->_propMap)) {
            $sql = "UPDATE ". $this->_table ." SET ";
            foreach ($this->_propMap as $col => $val) {
                $arCon[] = $col . "=" . $val;
            }
            $sql .= implode(",", $arCon);
            $sql .= " WHERE ". $this->_idColumn ."=". $this->_id;
            $db = new db_query($sql);
            unset($db);
            return true;
        }
        return false;
    }

    public function get($limit, $offset = null, $conditions = null, $orders = null)
    {
        $sql = "SELECT * FROM ". $this->_table;

        //where
        if ($conditions) {
            foreach ($conditions as $col => $val) {
                $where[] = $col . "=" . $val;
            }
            $sql .= " WHERE " . implode(",", $where);
        }

        //order by
        if ($orders) {
            foreach ($orders as $col => $direction) {
                $ord[] = $col . " " . $direction;
            }
            $sql .= " ORDER BY " . implode(",", $ord);
        }

        //limit
        if ($limit > 0) {
            $sql .= " LIMIT(". $limit ." ". $offset .")";
        }

        //execute
        $db = new db_query($sql);
        $rows = mysql_fetch_assoc($db->result);
        unset($db);

        return $rows;
    }

    private function _convertToArray($param)
    {
        $ret = array();
        foreach ($param as $k => $v) {
            if ($v instanceof CrModel) {
                $ret[$k] = $v->toArray();
            } else if (is_array($v)) {
                $ret[$k] = $this->_convertToArray($v);
            } else {
                $ret[$k] = $v;
            }
        }
        return $ret;
    }

    public function fromArray($arr)
    {
        foreach ($arr as $k => $v) {
            if (is_array($v)) {
                $clazz = CrReflectionUtil::getPropertyClass(get_class($this), $k);
                if (CrArrayUtil::isAssocArray($v)) {
                    $o = new $clazz();
                    $o->fromArray($v);
                    $this->__set($k, $o);
                } else {
                    $arr = array();
                    foreach ($v as $nk => $nv) {
                        if (is_array($nv)) {
                            $o = new $clazz();
                            $o->fromArray($nv);
                            $arr[$nk] = $o;
                        } else {
                            $arr[$nk] = $nv;
                        }
                    }
                    $this->__set($k, $arr);
                }
            } else {
                $this->$k = $v;
            }
        }
    }

    public function fromJson($json)
    {
        $this->fromArray(json_decode($json, true));
    }

    public function toArray()
    {
        return $this->_convertToArray($this->_propMap);
    }

    public function toJSON()
    {
        return json_encode($this->toArray());
    }

}