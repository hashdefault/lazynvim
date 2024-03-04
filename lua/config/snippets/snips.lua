local loaded, ls = pcall(require, "luasnip")
if not loaded then
	return
end
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
--local sn = ls.snippet_node
--local isn = ls.indent_snippet_node
--local f = ls.function_node
--local c = ls.choice_node
--local d = ls.dynamic_node
--local r = ls.restore_node
--local events = require("luasnip.util.events")
--local ai = require("luasnip.nodes.absolute_indexer")
--local fmt = require("luasnip.extras.fmt").fmt
--local m = require("luasnip.extras").m
--local lambda = require("luasnip.extras").l
--local postfix = require("luasnip.extras.postfix").postfix

ls.add_snippets("html", {
	s("html", {
		t({ "<!DOCTYPE html>", "" }),
		t({ "<html lang='en'>", "" }),
		t({ "<head>", "" }),
		t({ "  <meta charset='UTF-8'>", "" }),
		t({ "  <meta http-equiv='X-UA-Compatible' content='IE=edge'>", "" }),
		t({ "  <meta name='viewport' content='width=device-width, initial-scale=1.0'>", "" }),
		t({ "  <title>" }),
		i(1),
		t({ "</title>", "" }),
		t({ "</head>", "" }),
		t({ "<body>", "" }),
		i(0),
		t({ "", "</body>", "" }),
		t({ "</html>" }),
	}),
}, {
	key = "html",
})
ls.add_snippets("php", {
	s("debug", {
		t({ "ini_set('display_errors',1);" }),
		t({ "", "error_reporting(E_ALL);" }),
	}),
	s("new", {
		t({ "<div class='page-content-wrapper'>" }),
		t({ "", "    <div class='page-content'>" }),
		t({ "", "    <h3 class='page-title'>" }),
		i(1),
		t({ "</h3>" }),
		t({ "", "    <hr>" }),
		t({ "", "        <div class='row'>" }),
		t({ "", "            <div class='col-md-12'>", "" }),
		i(0),
		t({ "", "            </div>" }),
		t({ "", "         </div>" }),
		t({ "", "    </div>" }),
		t({ "", "</div>" }),
	}),
	s("foreach", {
		t({ "foreach($" }),
		i(1),
		t({ " as $" }),
		i(2),
		t({ "){", "" }),
		i(0),
		t({ "", "}", "" }),
	}),
	s("html", {
		t({ "<!DOCTYPE html>", "" }),
		t({ "<html lang='en'>", "" }),
		t({ "<head>", "" }),
		t({ "  <meta charset='UTF-8'>", "" }),
		t({ "  <meta http-equiv='X-UA-Compatible' content='IE=edge'>", "" }),
		t({ "  <meta name='viewport' content='width=device-width, initial-scale=1.0'>", "" }),
		t({ "  <title>" }),
		i(1),
		t({ "</title>", "" }),
		t({ "</head>", "" }),
		t({ "<body>", "" }),
		i(0),
		t({ "", "</body>", "" }),
		t({ "</html>" }),
	}),
	s("trycatch", {
		t({ "try {", "" }),
		t({ "", "$db->getConnection()->beginTransaction();" }),
		i(1),
		t({ "", "$db->getConnection()->commit();" }),
		i(0),
		t({ "", "} catch(Exception $e){ " }),
		t({ "", "$db->getConnection()->rollBack(); " }),
		t({ "", "AlertMessage::addFlashMessage($e->getMessage(),'warning'); " }),
		t({ "", 'header("Location: ?id="); ' }),
		t({ "", "exit();" }),
		t({ "", "}catch (\\Throwable $th){" }),
		t({ "", "$db->getConnection()->rollBack();" }),
		t({ "", "Log::gerarLog($th->getMessage().' | '.$th->getLine(),'error');" }),
		t({
			"",
			"AlertMessage::addFlashMessage('Não foi possivel finalizar esta ação, tente novamente.','danger');",
		}),
		t({ "", 'header("Location: ?id=");' }),
		t({ "", "exit();" }),
		t({ "", "} " }),
	}),
}, {
	key = "php",
})
