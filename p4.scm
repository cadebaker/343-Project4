(define preTax 0)
(define tax 0)
(define postTax 0)
(newline)
(newline)
;greet the user, give simple command instructions
(display "POS System")
(newline)
(display "Print total and exit with -1")
(newline)

;define the POS function for the user to utilize
(define (pos preTax input)
	
	(cond 
		;if -1 is entered
		((eq? input -1) 
			;calculate the pre-tax total, accounting for the -1 added in
			(display "Total before tax: $")
			(let ((preTaxFinal (+ preTax 1)))
			(display preTaxFinal))
			(newline)
			;calculate the tax, accounting for the -1 added in
			(display "Tax: $")
			(let ((tax(* (+ preTax 1) .065)))
			(display tax))
			(newline)
			;calculate the final total, accounting for the -1 added in
			(display "Total: $")
			(let ((taxFinal(* (+ preTax 1) .065)))
				(let ((final (+ taxFinal (+ preTax 1))))
					(display final)
				)
			)  
			(newline)
			(newline)
			;exit the program
			(exit)
		)

		;if a -1 is not entered
		(else 
			;display the current total to the user
			(display "Current Total: $ ")
			(display preTax)
			(newline)
			(newline)
			;ask the user for input
			(display "Enter Amount: $") 
			(let ((input(read)))
			;rerun the pos program with the new values
			(pos (+ input preTax) input))
			
			(newline)
			

		)
	)
	
)

;call the POS function to actually use
(pos 0 0)
