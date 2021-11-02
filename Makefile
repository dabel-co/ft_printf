# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dabel-co <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/27 15:51:51 by dabel-co          #+#    #+#              #
#    Updated: 2021/11/02 19:12:31 by dabel-co         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FLAGS = -Wall -Werror -Wextra 
AR = ar rcs
CC = gcc

FILES = printf \
	send \
	utils \
	int \
	x \
	char \

C = $(addprefix ./src/ft_, $(addsuffix .c, $(FILES)))
O = $(addprefix ./src/ft_, $(addsuffix .o, $(FILES)))

all: $(NAME)

$(NAME) : check_libft $(O)
	@$(AR) $(NAME) $(O)

$(O) : $(C)
	@$(CC) $(FLAGS) -c $< -o $@
check_libft :
	@if test -d Libft; then echo Libft found! ; else git clone https://github.com/dabel-co/Libft.git; fi
	@make all -C ./libft
	@cp ./libft/libft.a $(NAME)
clean:
	rm -f $(O) $(Obonus)
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY : all clean fclean re
