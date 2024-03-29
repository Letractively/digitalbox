<?php

/* ------------------------------------------------------------------
 * DigitalBox CMS 2.7
 * http://code.google.com/p/digitalbox/
 * 
 * Copyright 2011-2012, GuZhiji Studio <gu_zhiji@163.com>
 * This program is licensed under the GPL Version 3
 * ------------------------------------------------------------------
 */

class CalendarBox extends Box {

    function __construct() {
        parent::__construct("Right", "box1");

        if (!GetSettingValue("calendar_visible"))
            $this->_status = 2;
    }

    public function DataBind() {
        $this->SetTitle(GetLangData("calendar"));
        $this->SetContent("<script language=\"javascript\" src=\"scripts/calendar.js\"></script>", "center", "middle", 0);
    }

}
