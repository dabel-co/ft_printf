/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_send.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dabel-co <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/29 17:45:07 by dabel-co          #+#    #+#             */
/*   Updated: 2021/08/30 15:21:23 by dabel-co         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_send(const char *c, t_data *d)
{
	if (*c == 'd' || *c == 'i')
		ft_int(d);
	if (*c == 'u')
		ft_u(d);
	if (*c == 'c' || *c == 's')
		ft_char(d, *c);
	if (*c == 'x' || *c == 'X' || *c == 'p')
		ft_x(d, *c);
	if (*c == '%')
		ft_putchar('%', d, 1);
}
