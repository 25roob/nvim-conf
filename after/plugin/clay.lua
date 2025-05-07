-- [nfnl] after/plugin/clay.fnl
local nvim = require("aniseed.nvim")
local a = require("aniseed.core")
local str = require("aniseed.string")
local eval = require("conjure.eval")
local extract = require("conjure.extract")
local function call_clay_make()
  return eval["eval-str"]({origin = "set clay/make!", code = "(require '[scicloj.clay.v2.api :as clay])"})
end
local function eval_clojure_for_form_viz()
  return eval["eval-str"]({origin = "clay/make! for form", code = str.join("", {"(clay/make! {:source-path \"", nvim.fn.expand("%."), "\" :single-form '", a.get(extract.form({["root?"] = true}), "content"), "})"})})
end
local function eval_clojure_for_ns_viz()
  return eval["eval-str"]({origin = "clay/make! for buff", code = str.join("", {"(clay/make! {:source-path \"", nvim.fn.expand("%."), "\"})"})})
end
local function on_filetype()
  nvim.buf_set_keymap(0, "n", "<localleader>ev", "", {callback = eval_clojure_for_form_viz})
  nvim.buf_set_keymap(0, "n", "<localleader>env", "", {callback = eval_clojure_for_ns_viz})
  return nvim.buf_set_keymap(0, "n", "<localleader>cy", "", {callback = call_clay_make})
end
return nvim.create_autocmd("Filetype", {pattern = {"clojure"}, callback = on_filetype})
