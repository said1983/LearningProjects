﻿using SportsStore.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SportsStore.Domain.Concrete
{
    public interface IProductRepository
    {
        IQueryable<Product> GetProducts();

        void UpdateProduct(Product product);

        void Delete(int productID);

        void Add(Product product);
    }
}
