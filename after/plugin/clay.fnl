(local nvim (require :aniseed.nvim))
(local a (require :nfnl.core))
(local str (require :nfnl.string))
(local eval (require :conjure.eval))
(local extract (require :conjure.extract))

(fn call-clay-make []
  (eval.eval-str
    {:origin "set clay/make!"
     :code "(require '[scicloj.clay.v2.api :as clay])"}))

(fn eval-clojure-for-form-viz []
  (eval.eval-str
    {:origin "clay/make! for form"
     :code (str.join
             ""
             ["(clay/make! {:source-path \"" (nvim.fn.expand "%.") "\" :single-form '" (a.get (extract.form {:root? true}) :content) "})"])}))

(fn eval-clojure-for-ns-viz []
  (eval.eval-str
    {:origin "clay/make! for buff"
     :code (str.join
             ""
             ["(clay/make! {:source-path \"" (nvim.fn.expand "%.") "\"})"])}))

(fn on-filetype []
  (nvim.buf_set_keymap
    0 :n "<localleader>ev" ""
    {:callback eval-clojure-for-form-viz})
  (nvim.buf_set_keymap
    0 :n "<localleader>env" ""
    {:callback eval-clojure-for-ns-viz})
  (nvim.buf_set_keymap
    0 :n "<localleader>cy" ""
    {:callback call-clay-make}))

(nvim.create_autocmd
  :Filetype {:pattern ["clojure"] :callback on-filetype})
