#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb 28 14:04:48 2017

@author: traceyvanpuyvelde
"""
from datetime import timedelta, datetime
from random import randint
import pandas as pd

#In the year 2016
start = datetime.strptime('2016-01-01', '%Y-%m-%d')
end = datetime.strptime('2016-12-31', '%Y-%m-%d')

start_date = []
period = []
product = []
products = ['A', 'B', 'C']
amount = []

#playing with randoms: populate the empty lists with a random start date, a random period (1-12), random product name, and a random amount.
for i in range(100):
    start_date.append(random_date(start, end))
    period.append(random.randint(1,12))
    product.append(random.choice(products))
    amount.append(random.randint(1,1000))
       
#function to retrieve a random date in 2016 set with 'start' and 'end'
def random_date(start, end):
    return start + timedelta(days=randint(0, 365))

#create a dictionary of random lists
df = pd.DataFrame({'product': product, 'amount':amount, 'period':period, 'start_date':start_date})

    

#random.randint(0,5)
#random.choice(['red', 'black', 'green'])
#random.choice(myList)
#random.shuffle(list)
#random.randrange(start, stop[,step])
