global _start			# Точка запуска

section .text			# Секция кода

_start:
        mov     rax, 1		# Вызов записи данных
        mov     rdi, 1		# Поток стандартного вывода
        mov     rsi, message	# Запись адреса строки
        mov     rdx, 15		# Запись длины строки
        syscall			# Запуск системного вызова
        
        mov rax, 60		# 60 = код системного вызова выхода
        mov rdi, 0		# 0 = успешный код возврата
        syscall			# Запуск системного вызова
        
section .rodata
	message: db "Hello, World!", 10		# Выводимые данные
