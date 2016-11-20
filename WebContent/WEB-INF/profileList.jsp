<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DashBoard Here</title>
<style>
@import
	url(http://fonts.googleapis.com/css?family=Dosis:300|Lato:300,400,600,700|Roboto+Condensed:300,700|Open+Sans+Condensed:300,600|Open+Sans:400,300,600,700|Maven+Pro:400,700)
	;

@import
	url("http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;

html {
	background-image: url(http://www.ultraimg.com/images/2UeGfhZ.jpg);
}

body {
	padding: 0px;
	margin: 0px;
	font-family: "Open Sans";
	font-size: 14px;
	font-smoothing: antialiased;
}

.page {
	padding-bottom: 40px;
	width: 1216px;
	margin: auto;
	left: 10%;
	top: 10%;
	background-color: rgba(255, 255, 255, 0.7);
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	-moz-box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
}

.pageHeader {
	width: 100%;
	height: 50px;
	line-height: 50px;
	background-color: #54b9cd;
	color: White;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding: 5px 20px;
	vertical-align: middle;
}

.pageHeader .title {
	width: 40%;
	float: left;
	line-height: 40px;
	font-size: 1.5em;
	font-weight: 700;
}

.pageHeader .userPanel {
	width: 40%;
	float: right;
}

.pageHeader .userPanel i {
	float: right;
	line-height: 40px;
	padding-right: 10px;
}

.pageHeader .userPanel .username {
	float: right;
	line-height: 40px;
	padding: 0px 20px;
	font-weight: 600;
	font-size: 1.0em;
}

.pageHeader .userPanel img {
	float: right;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

.main {
	position: relative;
	width: 100%;
	height: 100%;
	clear: both;
	background-color: white;
}

.main .nav {
	width: 200px;
	height: 100%;
	float: left;
	min-height: 620px;
	background-color: rgba(227, 234, 235, 0.8);
}

.main .viewHeader .searchbox {
	width: 300px;
	height: 30px;
	line-height: 30px;
	background-color: White;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
}

.main .viewHeader .searchbox i {
	display: inline-block;
	color: #bbb;
	margin-left: 5px;
	margin-right: 5px;
	font-size: 16px;
}

.main .viewHeader .searchbox input[type="text"] {
	display: inlin-block;
	width: 120px;
	background-color: White;
	color: Black;
	font-family: "Lato";
	border: 0px;
}

.main .nav .menu {
	width: 100%;
	margin: 15px;
	color: #555;
}

.main .nav .menu .title {
	font-weight: 700;
	font-size: 1.0em;
	text-transform: uppercase;
}

.main .nav .menu ul {
	padding-left: 0px;
}

.main .nav .menu ul li {
	cursor: pointer;
	list-style: none;
	margin: 5px 0px;
	padding: 5px 0px;
	font-weight: 600;
	margin-right: 30px;
	padding-left: 10px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	transition: 0.25s all;
}

.main .nav .menu ul li.active {
	color: #79BC46;
}

.main .nav .menu ul li:hover {
	background-color: #999;
}

.main .nav .menu ul li i {
	font-size: 1.4em;
	margin-right: 10px;
}

.main .view {
	position: relative;
	margin-left: 200px;
}

.main .view .viewHeader {
	width: 100%;
	height: 70px;
	line-height: 70px;
	padding: 20px 20px;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border-bottom: 1px solid #E0E0E0;
}

.main .view .viewHeader .title {
	float: left;
	font-size: 1.4em;
	font-weight: 400;
	padding: 0px;
	color: #AAA;
	margin-top: -18px;
}

.main .view .viewHeader .functions {
	float: right;
}

.main .view .viewHeader .functions .button {
	float: right;
	height: 30px;
	line-height: 30px;
	background-color: #AAA;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	margin: 0px 5px;
	padding: 0px 20px;
	cursor: pointer;
	color: White;
	font-weight: 700;
}

.main .view .viewHeader .functions .button.active {
	background-color: #54b9cd;
}

.main .view .viewHeader .functions .button.inverz {
	background-color: inherit;
	border: 1px solid #AAA;
	width: 10px;
	color: #AAA;
	font-size: 1.3em;
	padding-left: 10px;
	padding-right: 16px;
}

.main .view .content {
	left: 0px;
	top: 70px;
	right: 0px;
	bottom: 0px;
	min-height: 511px;
	padding: 4px;
}

.main .view .content .list .title {
	width: 100%;
	padding: 10px;
	text-transform: uppercase;
	font-weight: 700;
	color: #54b9cd;
}

.main .view .content .list ul {
	width: 100%;
	padding-left: 10px;
	color: #777;
}

.main .view .content .list ul li {
	width: 100%;
	height: 100px;
	line-height: 50px;
	list-style: none;
	border-top: 1px solid #AAA;
}

.main .view .content .list ul li.checked {
	background-color: #F0F4F5;
}

.main .view .content .list ul li:last-child {
	border-bottom: 1px solid #AAA;
}

.main .view .content .list ul li i {
	float: left;
	width: 30px;
	height: 50px;
	line-height: 50px;
	margin-left: 10px;
	font-size: 1.3em;
}

.main .view .content .list ul li span {
	float: left;
	font-weight: 600;
}

.main .view .content .list ul li .info {
	float: right;
}

.main .view .content .list ul li .info span {
	font-weight: 300;
}

.main .view .content .list ul li .info .button {
	float: right;
	width: 100px;
	height: 30px;
	line-height: 30px;
	background-color: #AAA;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	margin: 10px 10px;
	text-align: center;
	cursor: pointer;
	color: White;
	font-weight: 700;
}

.main .view .content .list ul li .info .button.green {
	background-color: #85C157;
}

.clear {
	clear: both;
}

* {
	font-family: 'Helvetica Neue', Helvetica, sans-serif;
	font-size: 14px;
	margin: 0;
}

a {
	font-weight: bold;
	color: #fff;
	text-decoration: none;
}

.container {
	width: 400px;
	display: block;
	margin: 0 auto;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.4);
	position: fixed;
	z-index: 10000;
	right: 0px;
	bottom: 0px;
}

.header {
	padding: 20px 20px 18px 20px;
	background: #5FB471;
	color: #fff;
}

.header h2 {
	font-size: 16px;
	line-height: 15px;
	display: inline-block;
}

.header a {
	display: inline-block;
	float: right;
	background: #3d8b4e;
	font-size: 25px;
	line-height: 20px;
	padding: 3px 6px;
	margin-top: -5px;
	border-radius: 2px;
}

.chat-box,.enter-message {
	background: #ECECEC;
	padding: 0 20px;
	color: #a1a1a1;
}

.chat-box .message-box {
	padding: 18px 0 10px;
	clear: both;
}

.message-box .picture {
	float: left;
	width: 50px;
	display: block;
	padding-right: 10px;
}

.picture img {
	width: 43px;
	height: 48px;
	border-radius: 5px;
}

.picture span {
	font-weight: bold;
	font-size: 12px;
	clear: both;
	display: block;
	text-align: center;
	margin-top: 3px;
}

.message {
	background: #fff;
	display: inline-block;
	padding: 13px;
	width: 274px;
	border-radius: 2px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .04);
	position: relative;
}

.message:before {
	content: "";
	position: relative;
	display: block;
	left: 0;
	border-right: 6px solid #fff;
	border-top: 6px solid transparent;
	border-bottom: 6px solid transparent;
	top: 10px;
	margin-left: -6px;
}

.message span {
	color: #555;
	font-weight: bold;
}

.message p {
	padding-top: 5px;
}

.message-box.right-img .picture {
	float: right;
	padding: 0;
	padding-left: 10px;
}

.message-box.right-img .picture img {
	float: right;
}

.message-box.right-img .message:before {
	left: 100%;
	margin-right: 6px;
	margin-left: 0;
	border-right: 6px solid transparent;
	border-left: 6px solid #fff;
	border-top: 6px solid transparent;
	border-bottom: 6px solid transparent;
}

.enter-message {
	padding: 13px 0px;
}

.enter-message input {
	border: none;
	padding: 10px 12px;
	background: #d3d3d3;
	width: 260px;
	border-radius: 2px;
}

.enter-message a.send {
	padding: 10px 15px;
	background: #6294c2;
	border-radius: 2px;
	float: right;
}

/* -- import Roboto Font ---------------------------- */
@import
	"https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic"
	;
/* -- You can use this tables in Bootstrap (v3) projects. -- */
/* -- Box model ------------------------------- */
*,*:after,*:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
/* -- Demo style ------------------------------- */
html,body {
	position: relative;
	min-height: 100%;
	height: 100%;
}

html {
	position: relative;
	overflow-x: hidden;
	margin: 16px;
	padding: 0;
	min-height: 100%;
	font-size: 62.5%;
}

body {
	font-family: 'RobotoDraft', 'Roboto', 'Helvetica Neue, Helvetica, Arial',
		sans-serif;
	font-style: normal;
	font-weight: 300;
	font-size: 1.4rem;
	line-height: 2rem;
	letter-spacing: 0.01rem;
	color: #212121;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: optimizeLegibility;
}

#demo {
	margin: 20px auto;
	max-width: 960px;
}

#demo h1 {
	font-size: 2.4rem;
	line-height: 3.2rem;
	letter-spacing: 0;
	font-weight: 300;
	color: #212121;
	text-transform: inherit;
	margin-bottom: 1rem;
	text-align: center;
}

#demo h2 {
	font-size: 1.5rem;
	line-height: 2.8rem;
	letter-spacing: 0.01rem;
	font-weight: 400;
	color: #212121;
	text-align: center;
}

.shadow-z-1 {
	-webkit-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
	-moz-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
		rgba(0, 0, 0, 0.24);
}
/* -- Material Design Table style -------------- */
.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 2rem;
	background-color: #ffffff;
}

.table>thead>tr,.table>tbody>tr,.table>tfoot>tr {
	-webkit-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td
	{
	text-align: left;
	padding: 1.6rem;
	vertical-align: top;
	border-top: 0;
	-webkit-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.table>thead>tr>th {
	font-weight: 400;
	color: #757575;
	vertical-align: bottom;
	border-bottom: 1px solid rgba(0, 0, 0, 0.12);
}

.table>caption+thead>tr:first-child>th,.table>colgroup+thead>tr:first-child>th,.table>thead:first-child>tr:first-child>th,.table>caption+thead>tr:first-child>td,.table>colgroup+thead>tr:first-child>td,.table>thead:first-child>tr:first-child>td
	{
	border-top: 0;
}

.table>tbody+tbody {
	border-top: 1px solid rgba(0, 0, 0, 0.12);
}

.table .table {
	background-color: #ffffff;
}

.table .no-border {
	border: 0;
}

.table-condensed>thead>tr>th,.table-condensed>tbody>tr>th,.table-condensed>tfoot>tr>th,.table-condensed>thead>tr>td,.table-condensed>tbody>tr>td,.table-condensed>tfoot>tr>td
	{
	padding: 0.8rem;
}

.table-bordered {
	border: 0;
}

.table-bordered>thead>tr>th,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>tbody>tr>td,.table-bordered>tfoot>tr>td
	{
	border: 0;
	border-bottom: 1px solid #e0e0e0;
}

.table-bordered>thead>tr>th,.table-bordered>thead>tr>td {
	border-bottom-width: 2px;
}

.table-striped>tbody>tr:nth-child(odd)>td,.table-striped>tbody>tr:nth-child(odd)>th
	{
	background-color: #f5f5f5;
}

.table-hover>tbody>tr:hover>td,.table-hover>tbody>tr:hover>th {
	background-color: rgba(0, 0, 0, 0.12);
}

@media screen and (max-width: 768px) {
	.table-responsive-vertical>.table {
		margin-bottom: 0;
		background-color: transparent;
	}
	.table-responsive-vertical>.table>thead,.table-responsive-vertical>.table>tfoot
		{
		display: none;
	}
	.table-responsive-vertical>.table>tbody {
		display: block;
	}
	.table-responsive-vertical>.table>tbody>tr {
		display: block;
		border: 1px solid #e0e0e0;
		border-radius: 2px;
		margin-bottom: 1.6rem;
	}
	.table-responsive-vertical>.table>tbody>tr>td {
		background-color: #ffffff;
		display: block;
		vertical-align: middle;
		text-align: right;
	}
	.table-responsive-vertical>.table>tbody>tr>td[data-title]:before {
		content: attr(data-title);
		float: left;
		font-size: inherit;
		font-weight: 400;
		color: #757575;
	}
	.table-responsive-vertical.shadow-z-1 {
		-webkit-box-shadow: none;
		-moz-box-shadow: none;
		box-shadow: none;
	}
	.table-responsive-vertical.shadow-z-1>.table>tbody>tr {
		border: none;
		-webkit-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
		-moz-box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
		box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.12), 0 1px 2px 0
			rgba(0, 0, 0, 0.24);
	}
	.table-responsive-vertical>.table-bordered {
		border: 0;
	}
	.table-responsive-vertical>.table-bordered>tbody>tr>td {
		border: 0;
		border-bottom: 1px solid #e0e0e0;
	}
	.table-responsive-vertical>.table-bordered>tbody>tr>td:last-child {
		border-bottom: 0;
	}
	.table-responsive-vertical>.table-striped>tbody>tr>td,.table-responsive-vertical>.table-striped>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical>.table-striped>tbody>tr>td:nth-child(odd) {
		background-color: #f5f5f5;
	}
	.table-responsive-vertical>.table-hover>tbody>tr:hover>td,.table-responsive-vertical>.table-hover>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical>.table-hover>tbody>tr>td:hover {
		background-color: rgba(0, 0, 0, 0.12);
	}
}

.table-striped.table-mc-red>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-red>tbody>tr:nth-child(odd)>th
	{
	background-color: #fde0dc;
}

.table-hover.table-mc-red>tbody>tr:hover>td,.table-hover.table-mc-red>tbody>tr:hover>th
	{
	background-color: #f9bdbb;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-red>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-red>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-red>tbody>tr>td:nth-child(odd)
		{
		background-color: #fde0dc;
	}
	.table-responsive-vertical .table-hover.table-mc-red>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-red>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-red>tbody>tr>td:hover {
		background-color: #f9bdbb;
	}
}

.table-striped.table-mc-pink>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-pink>tbody>tr:nth-child(odd)>th
	{
	background-color: #fce4ec;
}

.table-hover.table-mc-pink>tbody>tr:hover>td,.table-hover.table-mc-pink>tbody>tr:hover>th
	{
	background-color: #f8bbd0;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-pink>tbody>tr>td:nth-child(odd)
		{
		background-color: #fce4ec;
	}
	.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-pink>tbody>tr>td:hover
		{
		background-color: #f8bbd0;
	}
}

.table-striped.table-mc-purple>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-purple>tbody>tr:nth-child(odd)>th
	{
	background-color: #f3e5f5;
}

.table-hover.table-mc-purple>tbody>tr:hover>td,.table-hover.table-mc-purple>tbody>tr:hover>th
	{
	background-color: #e1bee7;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-purple>tbody>tr>td:nth-child(odd)
		{
		background-color: #f3e5f5;
	}
	.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-purple>tbody>tr>td:hover
		{
		background-color: #e1bee7;
	}
}

.table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)>th
	{
	background-color: #ede7f6;
}

.table-hover.table-mc-deep-purple>tbody>tr:hover>td,.table-hover.table-mc-deep-purple>tbody>tr:hover>th
	{
	background-color: #d1c4e9;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-deep-purple>tbody>tr>td:nth-child(odd)
		{
		background-color: #ede7f6;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-purple>tbody>tr>td:hover
		{
		background-color: #d1c4e9;
	}
}

.table-striped.table-mc-indigo>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-indigo>tbody>tr:nth-child(odd)>th
	{
	background-color: #e8eaf6;
}

.table-hover.table-mc-indigo>tbody>tr:hover>td,.table-hover.table-mc-indigo>tbody>tr:hover>th
	{
	background-color: #c5cae9;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-indigo>tbody>tr>td:nth-child(odd)
		{
		background-color: #e8eaf6;
	}
	.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-indigo>tbody>tr>td:hover
		{
		background-color: #c5cae9;
	}
}

.table-striped.table-mc-blue>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-blue>tbody>tr:nth-child(odd)>th
	{
	background-color: #e7e9fd;
}

.table-hover.table-mc-blue>tbody>tr:hover>td,.table-hover.table-mc-blue>tbody>tr:hover>th
	{
	background-color: #d0d9ff;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-blue>tbody>tr>td:nth-child(odd)
		{
		background-color: #e7e9fd;
	}
	.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-blue>tbody>tr>td:hover
		{
		background-color: #d0d9ff;
	}
}

.table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)>th
	{
	background-color: #e1f5fe;
}

.table-hover.table-mc-light-blue>tbody>tr:hover>td,.table-hover.table-mc-light-blue>tbody>tr:hover>th
	{
	background-color: #b3e5fc;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-light-blue>tbody>tr>td:nth-child(odd)
		{
		background-color: #e1f5fe;
	}
	.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-light-blue>tbody>tr>td:hover
		{
		background-color: #b3e5fc;
	}
}

.table-striped.table-mc-cyan>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-cyan>tbody>tr:nth-child(odd)>th
	{
	background-color: #e0f7fa;
}

.table-hover.table-mc-cyan>tbody>tr:hover>td,.table-hover.table-mc-cyan>tbody>tr:hover>th
	{
	background-color: #b2ebf2;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-cyan>tbody>tr>td:nth-child(odd)
		{
		background-color: #e0f7fa;
	}
	.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-cyan>tbody>tr>td:hover
		{
		background-color: #b2ebf2;
	}
}

.table-striped.table-mc-teal>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-teal>tbody>tr:nth-child(odd)>th
	{
	background-color: #e0f2f1;
}

.table-hover.table-mc-teal>tbody>tr:hover>td,.table-hover.table-mc-teal>tbody>tr:hover>th
	{
	background-color: #b2dfdb;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-teal>tbody>tr>td:nth-child(odd)
		{
		background-color: #e0f2f1;
	}
	.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-teal>tbody>tr>td:hover
		{
		background-color: #b2dfdb;
	}
}

.table-striped.table-mc-green>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-green>tbody>tr:nth-child(odd)>th
	{
	background-color: #d0f8ce;
}

.table-hover.table-mc-green>tbody>tr:hover>td,.table-hover.table-mc-green>tbody>tr:hover>th
	{
	background-color: #a3e9a4;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-green>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-green>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-green>tbody>tr>td:nth-child(odd)
		{
		background-color: #d0f8ce;
	}
	.table-responsive-vertical .table-hover.table-mc-green>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-green>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-green>tbody>tr>td:hover
		{
		background-color: #a3e9a4;
	}
}

.table-striped.table-mc-light-green>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-light-green>tbody>tr:nth-child(odd)>th
	{
	background-color: #f1f8e9;
}

.table-hover.table-mc-light-green>tbody>tr:hover>td,.table-hover.table-mc-light-green>tbody>tr:hover>th
	{
	background-color: #dcedc8;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-light-green>tbody>tr>td:nth-child(odd)
		{
		background-color: #f1f8e9;
	}
	.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-light-green>tbody>tr>td:hover
		{
		background-color: #dcedc8;
	}
}

.table-striped.table-mc-lime>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-lime>tbody>tr:nth-child(odd)>th
	{
	background-color: #f9fbe7;
}

.table-hover.table-mc-lime>tbody>tr:hover>td,.table-hover.table-mc-lime>tbody>tr:hover>th
	{
	background-color: #f0f4c3;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-lime>tbody>tr>td:nth-child(odd)
		{
		background-color: #f9fbe7;
	}
	.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-lime>tbody>tr>td:hover
		{
		background-color: #f0f4c3;
	}
}

.table-striped.table-mc-yellow>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-yellow>tbody>tr:nth-child(odd)>th
	{
	background-color: #fffde7;
}

.table-hover.table-mc-yellow>tbody>tr:hover>td,.table-hover.table-mc-yellow>tbody>tr:hover>th
	{
	background-color: #fff9c4;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-yellow>tbody>tr>td:nth-child(odd)
		{
		background-color: #fffde7;
	}
	.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-yellow>tbody>tr>td:hover
		{
		background-color: #fff9c4;
	}
}

.table-striped.table-mc-amber>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-amber>tbody>tr:nth-child(odd)>th
	{
	background-color: #fff8e1;
}

.table-hover.table-mc-amber>tbody>tr:hover>td,.table-hover.table-mc-amber>tbody>tr:hover>th
	{
	background-color: #ffecb3;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-amber>tbody>tr>td:nth-child(odd)
		{
		background-color: #fff8e1;
	}
	.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-amber>tbody>tr>td:hover
		{
		background-color: #ffecb3;
	}
}

.table-striped.table-mc-orange>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-orange>tbody>tr:nth-child(odd)>th
	{
	background-color: #fff3e0;
}

.table-hover.table-mc-orange>tbody>tr:hover>td,.table-hover.table-mc-orange>tbody>tr:hover>th
	{
	background-color: #ffe0b2;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-orange>tbody>tr>td:nth-child(odd)
		{
		background-color: #fff3e0;
	}
	.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-orange>tbody>tr>td:hover
		{
		background-color: #ffe0b2;
	}
}

.table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)>td,.table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)>th
	{
	background-color: #fbe9e7;
}

.table-hover.table-mc-deep-orange>tbody>tr:hover>td,.table-hover.table-mc-deep-orange>tbody>tr:hover>th
	{
	background-color: #ffccbc;
}

@media screen and (max-width: 767px) {
	.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr>td,.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr:nth-child(odd)
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-striped.table-mc-deep-orange>tbody>tr>td:nth-child(odd)
		{
		background-color: #fbe9e7;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr:hover>td,.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr:hover
		{
		background-color: #ffffff;
	}
	.table-responsive-vertical .table-hover.table-mc-deep-orange>tbody>tr>td:hover
		{
		background-color: #ffccbc;
	}
}

@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro);

.contact-box {
	margin: 2em auto;
	padding: 0;
	border: solid 1px #D4D4D4;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	background: #FAFAFA;
	/*box-shadow*/
	-webkit-box-shadow: 0px 0px 50px 0px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0px 0px 50px 0px rgba(0, 0, 0, 0.1);
	box-shadow: 0px 0px 50px 0px rgba(0, 0, 0, 0.1);
}

.contact-box-header {
	padding: 0.7em;
	border-bottom: solid 1px #D4D4D4;
}

.contact-box-footer {
	border-top: solid 1px #D4D4D4;
}

.col1 {
	width: 100%;
	border-bottom: solid 1px #D4D4D4;
	position: relative;
}

.col2 {
	float: left;
	width: 50%;
	border-bottom: solid 1px #D4D4D4;
	position: relative;
}

.col1 textarea {
	width: 100%;
	max-width: 100%;
	overflow: auto;
	vertical-align: top;
}

.contact-box .col2.last,.contact-box .col1.last {
	border-bottom: none;
}

.col2 input {
	width: 100%;
}

h1 {
	font-size: 1.8em;
	font-weight: normal;
	text-align: center;
	margin-bottom: 1.6em;
	text-shadow: -1px 1px 2px rgba(150, 150, 152, 1);
}

h2 {
	font-size: 1.4em;
	font-weight: normal;
	margin: 0;
	margin-bottom: 0.1em;
}

h3 {
	font-size: 0.9em;
	margin: 0.1em;
	font-weight: normal;
}

a {
	text-decoration: none;
	color: #312020;;
}

.close {
	float: right;
	margin: -0.45em 0 0 0;
	font-size: 1.3em;
	pading: 0;
	/*transition*/
	-webkit-transition: color 0.9s;
	-moz-transition: color 0.9s;
	-o-transition: color 0.9s;
	transition: color 0.9s;
}

.close:hover {
	color: #757575;
}

em {
	color: #FF4545;
}

input[type='text'],input[type='email'],textarea {
	border: none;
	outline: 0;
	padding: 9px;
	padding-left: 50px;
	margin: 0;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: .9em;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

input[type='text']:hover,input[type='email']:hover,textarea:hover {
	background: #F7FAF8;
}

input.error,textarea.error {
	background: #FFEDED;
}

input.error:hover,textarea.error:hover {
	background: #FFD9D9;
}

.error::-webkit-input-placeholder {
	color: #D12828;
}

.error:-moz-placeholder {
	color: #D12828;
}

.error::-moz-placeholder {
	color: #D12828;
}

.error:-ms-input-placeholder {
	color: #D12828;
}

input[type='submit'] {
	display: block;
	margin: 0.45em;
	background: #55C958;
	border: none;
	color: white;
	font-size: .95em;
	padding: 0.5em 2em;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	float: right;
	font-family: 'Source Sans Pro', sans-serif;
	/*transition*/
	-webkit-transition: background 0.9s;
	-moz-transition: background 0.9s;
	-o-transition: background 0.9s;
	transition: background 0.9s;
}

input[type='submit']:hover {
	background: #57AD59;
}

.group::after {
	content: " ";
	display: table;
	clear: both;
}

.form-icon {
	position: absolute;
	background-position: center;
	background-repeat: no-repeat;
	width: 40px;
	height: 36px;
	z-index: 1000;
	opacity: 0.3;
}

.name-icon {
	background-image: url('http://michaljarosz.pl/assets/agent.png');
}

.email-icon {
	background-image: url('http://michaljarosz.pl/assets/email.png');
}

.edit-icon {
	background-image: url('http://michaljarosz.pl/assets/edit.png');
}
/*.contact-photo {
  width:50px;
  height:40px;
  float:left;
  margin:6px 17px 0 0;
}*/
div.error {
	background: #FF4545;
	color: white;
	padding: 0.4em 1em;
	position: absolute;
	left: 2.5em;
	top: 100%;
	margin-top: 3px;
	z-index: 2000;
	/*border-radius*/
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
}

div.error::before {
	content: " ";
	width: 0px;
	height: 0px;
	border-style: solid;
	border-width: 0 5px 8px 5px;
	border-color: transparent transparent #FF4545 transparent;
	position: absolute;
	bottom: 100%;
	left: 1;
}

@media all and (max-width: 650px) {
	.contact-box {
		
	}
	.col2 {
		width: 100%;
	}
	input[type='submit'] {
		width: 90%;
		margin: 0.45em auto;
		float: none;
	}
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.header').click(function() {

			$('.chat-box').toggle();
		});
	});
</script>

</head>
<body>
	<div class="page">
		<div class="pageHeader">
			<div class="title">FMS</div>
			<div class="userPanel">
				<i class="fa fa-chevron-down"></i><span class="username">Anit
					Chaudhary </span><img
					src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/73.jpg"
					width="40" height="40" />
			</div>
		</div>
		<div class="main">
			<div class="nav">
				<div class="menu">
					<div class="title">Navigation</div>
					<ul>
						<li><i class="fa fa-home"></i><a href="dash">Home</a></li>
						<li><i class="fa fa-upload"></i><a href="FileUpload">Upload
								File</a></li>
						<li><i class="fa fa-times"></i><a href="getList">Files</a></li>
						<li><i class="fa fa-user"></i><a href="profiles">Profiles</a></li>
						<li><i class="fa fa-users"></i><a href="profileUpload">Add
								User</a></li>
					</ul>
				</div>
			</div>
			<div class="view">
				<div class="viewHeader">
					<div class="searchbox">
						<div>
							<form action="searchByFileName" method="POST">
								<input type="search" placeholder="Search" name="FileName" /> <input
									type="submit" value="search" />
							</form>
						</div>
					</div>

				</div>
				<!-- Table Content -->
				<div class="content">
					<div id="demo">
						<h1>Table</h1>
						<div class="table-responsive-vertical shadow-z-1">
							<!-- Table starts here -->
							<table id="table">
								<tr>
									<td class="heading">Account Number</td>
									<td class="heading">File Name</td>
									<td class="heading">Middle Name</td>
									<td class="heading">Last Name</td>
									<td class="heading">Age</td>
									<td class="heading">Phone No</td>
									<td class="heading">Email</td>
									<td class="heading">Date Hired</td>
									<td class="heading">Attendance</td>
									<td class="heading">Address</td>
								</tr>
								<c:forEach var="pro" items="${profileList}">
									<tr>
										<td>${pro.account_no}</td>
										<td>${pro.firstname}</td>
										<td>${pro.middlename}</td>
										<td>${pro.lastname}</td>
										<td>${pro.age}</td>
										<td>${pro.phone}</td>
										<td>${pro.photo}</td>
										<td>${pro.datehired}</td>
										<td>${pro.attendance}</td>
										<td>${pro.address}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>