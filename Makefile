# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dabel-co <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/27 15:51:51 by dabel-co          #+#    #+#              #
#    Updated: 2021/09/03 11:46:24 by dabel-co         ###   ########.fr        #
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

C = $(addprefix ./ft_, $(addsuffix .c, $(FILES)))
O = $(addprefix ./ft_, $(addsuffix .o, $(FILES)))

all: $(NAME)

$(NAME) :	$(O) check_libft
	@$(AR) $(NAME) $(O)

$(O) : $(C) libft
	@$(CC) $(FLAGS) -c $(C)
check_libft :
	@make all -C ./libft
	@cp ./libft/libft.a $(NAME)
clean:
	rm -f $(O) $(Obonus)
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY : all clean fclean re
