-- bwrss.sql
-- by Bill Weinman - http://bw.org/contact/
-- SQLite database for BW RSS iOS app
-- Copyright 2009-2010 The BearHeart Group LLC

-- This script creates the database tables for the BW RSS application
-- and seeds the feed table with initial records. 

DROP TABLE IF EXISTS feed;
DROP TABLE IF EXISTS item;

CREATE TABLE feed (
    id      INTEGER PRIMARY KEY,    -- unique id for this record
    url     TEXT,                   -- url for data
    title   TEXT,                   -- title of the feed
    desc    TEXT,                   -- description of the feed
    pubdate TEXT,                   -- feed last update date/time
    stamp   TEXT DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE item (
    id      INTEGER PRIMARY KEY,    -- unique id for this record
    feed_id INTEGER,                -- feed id
    url     TEXT,                   -- url of item
    title   TEXT,                   -- title of the item
    desc    TEXT,                   -- description of the item
    pubdate TEXT,                   -- publication date/time of this item
    stamp   TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE UNIQUE INDEX feedUrl ON feed(url);

INSERT INTO feed (url, title, desc) VALUES (
    'http://feeds.feedburner.com/lyndablog',
    'lynda.blog',
    'the blog of lynda.com'
);

INSERT INTO feed (url, title, desc) VALUES (
    'http://feeds.feedburner.com/lyndacom-new-releases',
    'lynda.com New Releases',
    'lynda.com New Releases RSS Feed.'
);

INSERT INTO feed (url, title, desc) VALUES (
    'http://billweinman.wordpress.com/feed/',
    'Bill Weinman''s Technology Blog',
    'because it''s all about the data'
);

