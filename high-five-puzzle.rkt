#lang racket

(require "another-a-mini-kanren/another-a-mini-kanren.rkt")

(fresh (h)
       (run* (h) (all (== h (list
                          (_)
                          (_)
                          (_)
                          (list 'Brierwood (_) (_))
                          (list (_) (_) 'Keith)))
                      (memo (list 'Watershed (_) (_)) h)
                      (memo (list (_) 'Real-Estate (_)) h)
                      (memo (list (_) 'Public-Relations 'Trish) h)
                      (memo (list 'Glyptic (_) (_)) h)
                      (memo (list 'Thebes-Group (_) (_)) h)
                      (any (all (memo (list 'Glyptic 'Web-Design (_)) h)
                                (memo (list 'Thebes-Group 'Literary (_)) h))
                           (all (memo (list 'Glyptic 'Literary (_)) h)
                                (memo (list 'Thebes-Group 'Web-Design (_)) h)))
                      (fresh (hh) (all
                                  (lefto hh (list (_) 'Public-Relations 'Trish) h)
                                  (lefto (list 'Glyptic (_) (_)) hh h)))
                      (lefto (list (_) (_) 'Edwina) (list (_) 'Accounting (_)) h)
                      (lefto (list 'Nelson-&-Leopold (_) (_)) (list (_) (_) 'Edwina) h)
                      (lefto (list (_) (_) 'Ogden) (list (_) (_) 'Zed) h)
                      (any (ntho 1 (list (_) 'Web-Design (_)) h)
                           (ntho 2 (list (_) 'Web-Design (_)) h))
                      )))