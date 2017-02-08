# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mgould <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/28 11:37:28 by mgould            #+#    #+#              #
#    Updated: 2017/02/07 12:03:33 by mgould           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ../libftprintf.a

CFLAGS = -Wall -Wextra -Werror -I .

SRC	= ft_atoi.c ft_putchar.c ft_strlen.c \
	  	ft_putnbr.c ft_putstr.c ft_strcpy.c \
		ft_strdup.c ft_memset.c ft_bzero.c \
		ft_strncpy.c ft_strcat.c ft_strncat.c \
		ft_strlcat.c ft_strchr.c ft_memcmp.c \
		ft_memchr.c ft_memmove.c ft_memccpy.c \
		ft_memcpy.c \
		ft_strrchr.c ft_strstr.c ft_strnstr.c \
		ft_strcmp.c ft_strncmp.c ft_isalpha.c \
		ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_tolower.c ft_toupper.c \
		ft_memalloc.c ft_memdel.c ft_strnew.c \
		ft_strdel.c ft_strclr.c ft_striter.c \
		ft_striteri.c ft_strmap.c ft_strmapi.c \
		ft_strequ.c ft_strnequ.c ft_strsub.c \
		ft_strjoin.c ft_strtrim.c ft_strsplit.c \
		ft_itoa.c ft_putendl.c ft_putchar_fd.c \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_lstnew.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c \
		ft_lstmap.c ft_lstiter.c ft_wc.c ft_make_word.c \
		ft_mnbr.c ft_getz.c ft_fill_char.c \
		ft_is_prime.c ft_sqrt.c ft_iterative_power.c \
		ft_recursive_factorial.c \
		ft_printf.c pf_g_const_vars.c pf_parse_sub_helpers.c \
		pf_parse_helpers.c pf_put_big_nbr.c pf_big_itoa.c \
		pf_big_itoa_base.c pf_ubig_itoa_base.c \
		pf_meta_helpers.c pf_d_i_helpers.c pf_typemod_helpers.c \
		pf_meta_helpers2.c pf_meta_helpers3.c pf_ox_helpers.c \
		pf_str_helpers.c pf_cpu_helpers.c pf_print_helpers.c \
		pf_d_i_negative.c pf_meta_helpers1.c

O = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(O)
	ar rc $(NAME) $(O)

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $^

clean:
	rm -f $(O)

fclean: clean
	rm -f $(NAME)

re: fclean all
