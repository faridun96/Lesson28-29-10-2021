using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ASPNETCoreMVCCRUD.Models;

namespace ASPNETCoreMVCCRUD.Context
{
    public class MVCContext : DbContext
    {
        public MVCContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }
    }
}
