#!/usr/bin/env node

// Pandoc filter to convert all text to uppercase

var pandoc = require('pandoc-filter');
var Str = pandoc.Str;

const IS_OK = /http|mailto|irc|ftp/g;
const IS_INTERNAL_NSS = /Mozilla\/Projects\/NSS\//g
const IS_INTERNAL = /\/en\-US\/docs\/NSS\//g
const IS_MDN = /\/en\-US\//g
const IS_NSS_NSS = /NSS\/\/NSS_/g
const IS_NSS = /\/NSS_/g
const LABEL_FORBIDEN_CHARS = /[\/.]/g
const IS_NUMBER = /#[0-9]*/g
const SSL_FUNCTIONS = /NSS\/SSL_functions\//g

const INTERNAL_LINK_PREFIX = 'Mozilla/Projects/'


function createRef(label) {
  return pandoc.Code(
      ['', ['interpreted-text'], [['role', 'ref']]],
      label.replace(LABEL_FORBIDEN_CHARS, '_'))
}

function fixLink(text, link) {
  let index;

  // Replace /en-US/docs/Mozilla/Projects/NSS/... links with their rst label.
  if ((index = link.search(IS_INTERNAL_NSS)) >= 0) {
    return createRef(link.substring(index));
  }

  // Replace /en-US/docs/... links with their rst label.
  if ((index = link.search(IS_NSS_NSS)) >= 0) {
    return createRef(INTERNAL_LINK_PREFIX + link.substring(index))
  }

  if ((index = link.search(IS_NSS)) >= 0) {
    return createRef(INTERNAL_LINK_PREFIX + link.substring(index + 1))
  }

  if ((index = link.search(IS_INTERNAL)) >= 0) {
    return createRef(
        INTERNAL_LINK_PREFIX + link.substring('/en-US/docs/NSS/'.length))
  }

   if (!link.includes('NSS') && (index = link.search(IS_MDN)) >= 0) {
    return pandoc.Link(
        ['', [], []], text, ['https://developer.mozilla.org' + link, ''])
  }

  console.error(link)
}

function action({t: type, c: value}, format, meta) {
  if (type === 'Link') {
    // Some links are already ok i.e. http:...
    if (value[2][0].search(IS_OK) == 0) {
      return;
    }

    return fixLink(value[1], value[2][0]);
  }
}

pandoc.stdio(action);
