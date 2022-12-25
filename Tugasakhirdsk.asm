.model small
.code
org 100h
start:
    jmp mulai
menu    db 13,10,'     MENU Makanan    '
        db 13,10,'01. Nasi                   :3k'
        db 13,10,'02. Nasi Goreng                :10k'
        db 13,10,'03. Ayam goreng                :12k'
        db 13,10,'04. Ayam Bakar                 :15k'
        db 13,10,'05. Ayam Krispi                :13k'
        db 13,10,'06. Ayam Geprek                :14k','$'

error       db 13,10,'KODE SALAH$'
pilih_menu  db 13,10,'SILAHKAN PILIH MENU : $'
success db 13,10,'Selamat Anda Berhasil $'



mulai:
    mov ah,09h
    mov dx,offset menu
    int 21h
    jmp proses 
    jmp error_msg
error_msg:
    mov ah,09h
    mov dx,offset error
    int 21h
    int 20h
proses:
    mov ah,09h
    mov dx,offset pilih_menu
    int 21h

    mov ah,1
    int 21h
    mov bh,al
    mov ah,1
    int 21h
    mov bl,al
    cmp bh,'0'
    cmp bl,'1'
    je hasil1

    cmp bh,'0'
    cmp bl,'2'
    je hasil2

    cmp bh,'0'
    cmp bl,'3'
    je hasil3

    cmp bh,'0'
    cmp bl,'4'
    je hasil4

    cmp bh,'0'
    cmp bl,'5'
    je hasil5

    cmp bh,'0'
    cmp bl,'6'
    je hasil6

    jne error_msg

hasil1:
    mov ah,09h
    mov dx,teks1
    int 21h
    int 20h

hasil2:
    mov ah,09h
    mov dx,teks2
    int 21h
    int 20h

hasil3:
    mov ah,09h
    mov dx,teks3
    int 21h
    int 20h

hasil4:
    mov ah,09h
    mov dx,teks4
    int 21h
    int 20h

hasil5:
    mov ah,09h
    mov dx,teks5
    int 21h
    int 20h

hasil6:
    mov ah,09h
    mov dx,teks6
    int 21h
    int 20h

teks1:       db 13,10,'Nasi'
            db 13,10,'Total harga       :   3k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

teks2:       db 13,10,'Nasi Goreng'
            db 13,10,'Total harga       :   10k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

teks3:       db 13,10,'Ayam Goreng'
            db 13,10,'Total harga       :   12k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

teks4:       db 13,10,'Ayam Bakar'
            db 13,10,'Total harga       :   15k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

teks5:       db 13,10,'Ayam Krispi'
            db 13,10,'Total harga       :   13k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

teks6:       db 13,10,'Ayam Geprek'
            db 13,10,'Total harga       :   14k'
            db 13,10,'Silahkan Bayar di Kasir'
            db 13,10,'TERIMAKASIH $'

end start