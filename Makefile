# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdesmare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/11 10:38:56 by jdesmare          #+#    #+#              #
#*   Updated: 2017/09/09 14:23:53 by jdesmare         ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

NAME = Colleen
NAME1 = Grace
NAME2 = Sully

SRC = Colleen.c
SRC1 = Grace.c
SRC2 = Sully.c

REST =  Grace_kid.c		\
		Sully_1.c		\
		Sully_2.c		\
		Sully_3.c		\
		Sully_4.c		\
		Sully_5.c		\

CC = gcc $(FLAGS)

FILES = $(NAME) $(NAME1) $(NAME2)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	@$(CC) -o $(NAME) $(SRC)
	@echo "$(NAME) created successfully"
	@$(CC) -o $(NAME1) $(SRC1)
	@echo "$(NAME1) created successfully"
	@$(CC) -o $(NAME2) $(SRC2)
	@echo "$(NAME2) created successfully"

clean:
	@echo "Erasing files..."
	@rm -f $(FILES)
	@rm -f $(REST)
	@echo "Done."

fclean: clean
	@echo "Erasing files..."
	@rm -f $(FILES)
	@echo "Done."

re: fclean all clean

.PHONY: all, clean, fclean, re
