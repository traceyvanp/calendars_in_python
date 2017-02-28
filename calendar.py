#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb 28 14:04:48 2017

@author: traceyvanpuyvelde
"""
from datetime import timedelta, datetime
from random import randint

#In the year 2016
start = datetime.strptime('2016-01-01', '%Y-%m-%d')
end = datetime.strptime('2016-12-31', '%Y-%m-%d')

start_date = []
period = []
product = []
products = ['A', 'B', 'C']

#create a dates list with random dates in 2016
for i in range(100):
    start_date.append(random_date(start, end))
       
def random_date(start, end):
    return start + timedelta(days=randint(0, 365))

#period is a number of months between 1 and 12
for i in range(100):
    period.append(random.randint(1,12))
    
for i in range(100):
    product.append(random.choice(products))
    
    
    

#random.randint(0,5)
#random.choice(['red', 'black', 'green'])
#random.choice(myList)
#random.shuffle(list)
#random.randrange(start, stop[,step])
