using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ASPNETCoreMVCCRUD.Context;
using ASPNETCoreMVCCRUD.Models;

namespace ASPNETCoreMVCCRUD.Controllers
{
    public class ProductController : Controller
    {
        private readonly MVCContext _context;

        public ProductController(MVCContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> IndexAsync()
        {
            var result = await _context.Products.ToListAsync();
            return View(result);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(Product product, CancellationToken token)
        {
            if (!ModelState.IsValid)
            {
                return View(product);
            }

            product.InsertDate = DateTime.UtcNow;

            _context.Products.Add(product);

            await _context.SaveChangesAsync(token);

            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return RedirectToAction("Index");
            }

            return View(product);
        }

        [HttpGet]
        public async Task<IActionResult> Delete(int id)
        {
            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return RedirectToAction("Index");
            }
            _context.Products.Remove(product);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Product productModel)
        {
            if (!ModelState.IsValid)
            {
                return View(productModel);
            }

            var product = await _context.Products.FindAsync(productModel.Id);

            if (productModel == null)
            {
                return RedirectToAction("Index");
            }

            product.Cost = productModel.Cost;
            product.Model = productModel.Model;

            await _context.SaveChangesAsync();

            return RedirectToAction("Index");
        }
    }
}
