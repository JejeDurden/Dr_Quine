# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdesmare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/11 10:38:56 by jdesmare          #+#    #+#              #
#*   Updated: 2017/09/09 14:37:30 by jdesmare         ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

CC = gcc
CFLAGS = -Wall -Werror -Wextra

SRC1=$(NAME1).c
SRC2=$(NAME2).c
SRC3=$(NAME3).c
OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)
OBJ3 = $(SRC3:.c=.o)

#.SILENT:
all: $(NAME1)			 $(NAME2) $(NAME3)

$(NAME1): $(OBJ1)
		$(CC) $(CFLAGS) -o $(NAME1) $^
		@echo "Compiling $(NAME1)... Done."

$(NAME2): $(OBJ2)
		$(CC) $(CFLAGS) -o $(NAME2) $^
		@echo "Compiling $(NAME2)... Done."

$(NAME3): $(OBJ3)
		$(CC) $(CFLAGS) -o $(NAME3) $^
		@echo "Compiling $(NAME3)... Done."

%.o: %.c
		$(CC) $(CFLAGS) -o $@ -c $<

clean:
		@rm -rf $(OBJ1) $(OBJ2) $(OBJ3)
		@echo "Erasing .o files... Done."

fclean: clean
		@rm -rf $(NAME1) $(NAME2) $(NAME3)
		@echo "Erasing binaries... Done."

re: fclean all clean

.PHONY: all, clean, fclean, re
