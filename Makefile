# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atbicer <atbicer@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/22 14:19:20 by atbicer           #+#    #+#              #
#    Updated: 2024/10/06 20:30:40 by atbicer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB = libft/libft.a
CFLAGS = -Wall -Wextra -Werror
CC = cc

all: libft server client

server: server.o
	$(CC) -o $@ $< $(LIB)
	@echo  server compiled

client: client.o
	$(CC) -o $@ $< $(LIB)
	@echo client compiled

%.o : %.c
	$(CC) $(CFLAG) -o $@ -c $<

libft:
	@make -C ./libft

clean:
	@rm -rf *.o
	@make -C ./libft clean

fclean: clean
	@rm -rf server client
	@rm -rf libft/libft.a

re : fclean all

.PHONY: all, clean, fclean, re, libft
