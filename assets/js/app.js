// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"


import * as d3Selection from "d3-selection";
import * as d3Timer from "d3-timer";
import * as d3Fetch from "d3-fetch";
import * as d3Scale from "d3-scale";
export const d3 = Object.assign({}, d3Selection, d3Timer, d3Fetch, d3Scale);