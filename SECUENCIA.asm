	list	p=18f452	
#include<p18f452.inc>

jj		equ		0x0A
kk		equ		0x0B
aa		equ		0x0C


	org		0x00

	clrf	TRISB	;configura puerto b como entrada
	clrf	TRISD	;configura puerto b como entrada

pre_inicio
	
	clrf			PORTB
	clrf			PORTD


comienza

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	
						;pone en uno los led's despues de medio segundo prende el led siguiente y se apaga el anterior
	bsf			PORTD,0		;menos el ultimo que cuando se apaga se prende 
	bsf			PORTB,0
	call			retardo
	

	bcf			PORTD,0
	bcf			PORTB,0



dos

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,1
	bsf			PORTB,1
	call			retardo


	bcf			PORTD,1
	bcf			PORTB,1



tres

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,2
	bsf			PORTB,2
	call			retardo
	

	bcf			PORTD,2
	bcf			PORTB,2
	


cuatro

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,3
	bsf			PORTB,3
	call			retardo


	bcf			PORTD,3
	bcf			PORTB,3



cinco

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,4
	bsf			PORTB,4
	call			retardo


	bcf			PORTD,4
	bcf			PORTB,4




seis

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	


	bsf			PORTD,5
	bsf			PORTB,5
	call			retardo


	bcf			PORTD,5
	bcf			PORTB,5



siete

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,6
	bsf			PORTB,6
	call			retardo


	bcf			PORTD,6
	bcf			PORTB,6



ocho

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	bsf			PORTD,7
	bsf			PORTB,7
	call			retardo
	

	bcf			PORTD,7
	bcf			PORTB,7

	movlw		d'4'
	movwf		jj
	movlw		d'135'
	movwf		aa	

	setf			PORTB
	setf			PORTD
	call			retardo	

	goto		pre_inicio	
		

retardo						;retardo principál
	movlw	d'238'
	movwf	kk
	decfsz	jj,f
	goto	lapso
	return

lapso
	decfsz	kk,f			;retardo secundario
	goto	lapso
	goto	dec

dec	
	decfsz	aa,f
	goto	dec_sub
	goto	retardo

dec_sub
	decfsz	kk,f		
	goto	dec_sub
	goto	dec	

	end