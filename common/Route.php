<?php
/**
 * Created by PhpStorm.
 * User: JFog
 * Date: 7/12/2015
 * Time: 2:46 PM
 */
namespace common;

class Route
{
    const ACTIVE = 1;
    const INACTIVE = 0;

    private $category = null;
    private $page = null;
    private $error = null;

    public $baseUrl = null;
    public $dateFrom = '10/06/2005';
    public $dateTo = null;
    public $pageSize = 100;
    public $pageNo = 1;

    public function setCategory($id)
    {
        $this->category = $id;
    }

    public function getCategory()
    {
        return $this->category;
    }

    public function setPage($page)
    {
        $this->page = $page;
    }

    public function setFromDate($date)
    {
        $this->dateFrom = $date;
    }

    public function getFromDate()
    {
        if (!$this->dateFrom) {
            return date('d/m/Y',strtotime("-2 month"));
        }
        return $this->dateFrom;
    }

    public function setToDate($date)
    {
        $this->dateTo = $date;
    }

    public function getToDate()
    {
        if (!$this->dateTo) {
            return date('d/m/Y');
        }
        return $this->dateTo;
    }

    public function setPageSize($size)
    {
        $this->pageSize = $size;
    }

    public function getPageSize()
    {
        return $this->pageSize;
    }

    public function setPageNo($no)
    {
        $this->pageNo = $no;
    }

    public function getPageNo()
    {
        return $this->pageNo;
    }

    public function setError($error)
    {
        $this->error = $error;
    }

    public function getErrors()
    {
        return $this->error;
    }

    public function getBaseUrl()
    {
        $sql = "SELECT * FROM route WHERE category = ". $this->category ." AND page = '". $this->page ."' AND active = ". self::ACTIVE ." LIMIT 1";
        return $sql;
    }

    public function setBaseUrl($url)
    {
        $this->baseUrl = $url;
    }

    public function getUrl()
    {
        $base = $this->baseUrl;

        if (!$base) {
            $this->error = 'Check category or page';
            return null;
        }

        //get params
        $params = $this->getParams();

        $conditions = [];
        foreach ($params as $k => $v) {
            $conditions[] = $k . '=' . $v;
        }

        $url = $base . '?' . implode('&', $conditions);
        return $url;
    }

    private function getParams()
    {
        $params = [];
        if ($this->page == 'THONG_BAO_MOI_THAU' || $this->page == 'THONG_BAO_MOI_THAU_QUOC_TE') {
            $params['gubun'] = $this->category;
            $params['fromDate'] = $this->getFromDate();
            $params['toDate'] = $this->getToDate();
            $params['pageSize'] = $this->pageSize;
            $params['pageNo'] = $this->getPageNo();
            $params['pqCls'] = 'Y';
            $params['bidMethod'] = '';
            $params['viewType'] = 0;
            $params['instituName'] = '';
            $params['instituCode'] = '';
            $params['isInstitu'] = '';
            $params['bidNM'] = '';
            $params['typeFind'] = 1;
            $params['fromOpenDate'] = '01/01/2010';
            $params['toOpenDate'] = '31/12/2050';
            $params['refNumber'] = '';
            $params['firstCall'] = 'N';

        } elseif ($this->page == 'KET_QUA_MO_THAU_DIEN_TU') {
            $params['suyoCode'] = '';
            $params['page_no'] = $this->getPageNo();
            $params['gongotype'] = 'Y';
            $params['suyoName'] = '';
            $params['gigwan'] = 1;
            $params['prod_name'] = '';
            $params['cont_method'] = '';
            $params['yipchal_date1'] = $this->getFromDate();
            $params['yipchal_date2'] = $this->getToDate();
            $params['refer_num'] = '';
            $params['orderby_item'] = 2;
            $params['page_size'] = $this->pageSize;

        } elseif ($this->page == 'KET_QUA_DAU_THAU_DIEN_TU') {
            $params['noticeType'] = 'Y';
            $params['instituName'] = '';
            $params['instituCode'] = '';
            $params['radOrgan'] = 0;
            $params['noticeNm'] = '';
            $params['openbidDate1'] = $this->getFromDate();
            $params['openbidDate2'] = $this->getToDate();
            $params['referNum'] = '';
            $params['pageSize'] = $this->pageSize;
            $params['notice_num'] = '';
            $params['orgCode'] = '';
            $params['searchType'] = 1;
            $params['bidType'] = $this->category;

        } elseif ($this->page == 'KET_QUA_DAU_THAU_TRUC_TIEP') {
            $params['pqCls'] = 'Y';
            $params['bidMethod'] = '00';
            $params['viewType'] = '0';
            $params['instituName'] = '';
            $params['instituCode'] = '';
            $params['isInstitu'] = '0';
            $params['bidNM'] = '';
            $params['fromOpenDate'] = $this->getFromDate();
            $params['toOpenDate'] = $this->getToDate();
            $params['fromDate'] = '01/01/2010';
            $params['toDate'] = '31/12/2050';
            $params['refNumber'] = '';
            $params['Bid_succ_offline_yn'] = 'N';
            $params['pageSize'] = $this->pageSize;
            $params['firstCall'] = 'N';
            $params['pageNo'] = $this->getPageNo();
            $params['gubun'] = $this->category;

        }

        return $params;
    }
}