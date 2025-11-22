(define (ascending? s)
    'YOUR-CODE-HERE
    (if (null? s)
        #t
        (if (null? (cdr s))
            #t
            (if (> (car s) (car (cdr s)))
                #f
                (ascending? (cdr s))
            )
        )
    )
)

(define (my-filter pred s)
    'YOUR-CODE-HERE
    (cond
        ((null? s) '())
        ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
        (else (my-filter pred (cdr s)))
    )
)

(define (interleave lst1 lst2)
    'YOUR-CODE-HERE
    (cond
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))
    )
)

(define (no-repeats s)
    'YOUR-CODE-HERE
    (if (null? s)
        '()
        (cons (car s) (no-repeats (my-filter (lambda (x) (not (= x (car s)))) (cdr s))))
    )
)
