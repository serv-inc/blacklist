"use strict";
/* jshint esversion: 6, strict: global */
/* globals chrome */
/* globals document */
// licensed under the MPL 2.0 by (github.com/serv-inc)

/**
* @fileoverview goes to block page
*/
document.location.href = chrome.extension.getURL('blocked.html?host=' +
                                                 document.location.host);
