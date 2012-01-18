/*
    bwH5.js by Bill Weinman
    <http://bw.org/contact/>
    created 2011-04-16
    updated 2011-07-07

    Copyright (c) 2011 The BearHeart Group, LLC
    This file may be used for personal educational purposes as needed.
    Use for other purposes is granted provided that this notice is
    retained and any changes made are clearly indicated as such.
*/

var _bwH5_version = "1.1.3";

// useful for finding elements
var element = function(id) { return document.getElementById(id); }
var errorMessage = undefined;
var elStatus;

function getOpenDatabase() {
    try {
        if( !! window.openDatabase ) return window.openDatabase;
        else return undefined;
    } catch(e) {
        return undefined;
    }
}

function getLocalStorage() {
    try {
        if( !! window.localStorage ) return window.localStorage;
        else return undefined;
    } catch(e) {
        return undefined;
    }
}

function getSessionStorage() {
    try {
        if( !! window.sessionStorage ) return window.sessionStorage;
        else return undefined;
    } catch(e) {
        return undefined;
    }
}

function dispError( message ) {
    errorMessage = '<p class="error">' + message + '</p>';
    haveError = true;
}

function statusMessage(s) {
    if(!elStatus) elStatus = element('statusMessage');
    if(!elStatus) return;
    elStatus.innerHTML = s;
    if(s) elStatus.innerHTML = s;
    else elStatus.innerHTML = '&nbsp;';
}


function bwTable( wrap ) {
    this.wrap = ( wrap == undefined ) ? true : wrap;    // default to true
    this.rows = new Array();
    this.header = [];

    this.setHeader = function( row ) {
        this.header = row;
    }

    this.addRow = function( row ) {
        this.rows.push(row);
    }

    this.updateRow = function( index, row ) {
        this.rows[index] = row;
    }

    this.getRow = function ( index ) {
        return this.rows[index];
    }

    this.countRows = function () {
        return this.rows.length;
    }

    this.getTableHTML = function () {
        var a = '';
        if(this.wrap) a += '<table class="bwTable">\n';
        a += this.getHeaderHTML();
        for(var row in this.rows) {
            a += this.getRowHTML(this.rows[row]);
        }
        if(this.wrap) a += '</table>\n';
        return a;
    }

    this.getHeaderHTML = function () {
        if( this.header.length == 0 ) return '';
        var a = '<tr>';
        for( var cell in this.header ) {
            a += '<th>' + this.header[cell] + '</th>';
        }
        a += '</tr>\n';
        return a;
    }

    this.getRowHTML = function (row ) {
        var a = '<tr>';
        for( var cell in row ) {
            var v= row[cell];
            if(v == null) v = '<span class="red">NULL</span>';
            a += '<td>' + v + '</td>';
        }
        a += '</tr>\n';
        return a;
    }

    this.writeTable = function () {
        document.write(this.getTableHTML());
    }

}

