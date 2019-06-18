using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileResearchDevelopment.Models;
using TextileResearchDevelopment.BLL;

namespace TextileResearchDevelopment.Controllers
{
    public class AopPrintController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetData()
        {
            JsonResult result = new JsonResult();
            List<Aop> data = new List<Aop>();

            try
            {
                data = AopBLL.GetList();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            return Json(new { data = data }, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public ActionResult Create(Aop aop)
        {
            Boolean Result = false;
            try
            {
                if (aop.Id == 0)
                {
                    int Id = AopBLL.AddAop(aop);
                    if (Id > 0)
                    {
                        aop.Id = Id;
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = aop }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Edit(Aop aop)
        {
            Boolean Result = false;
            try
            {
                if (aop.Id > 0)
                {
                    int Id = AopBLL.EditAop(aop);
                    if (Id > 0)
                    {
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = aop }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Approve(Aop aop)
        {
            Boolean Result = false;
            try
            {
                if (aop.Id > 0)
                {
                    int Id = AopBLL.ApproveAop(aop);
                    if (Id > 0)
                    {
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = aop }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Revise(Aop aop)
        {
            Boolean Result = false;
            try
            {
                if (aop.Id > 0)
                {
                    int Id = AopBLL.ReviseAop(aop);
                    if (Id > 0)
                    {
                        Result = true;
                    }
                    else
                    {
                        Result = false;
                    }
                }

                if (Result)
                {
                    return Json(new { data = aop }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = AopBLL.DeleteAop(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult StenterSearch(Stenter stenterSearchObj)
        {

            List<Stenter> data = new List<Stenter>();
            try
            {
                data = AopBLL.StenterSearch(stenterSearchObj);
            }
            catch (Exception ex)
            {
                data = new List<Stenter>();
            }

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult BarCodeAuthorization(int BarCode)
        {
            Boolean Result = false;
            try
            {
                if (BarCode > 0)
                {
                    Result = AopBLL.BarCodeAuthorization(BarCode);
                }
                if (BarCode == 0)
                {
                    Result = true;
                }

                if (Result)
                {
                    return Json("true", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

            return Json("false", JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetPrintTypeList()
        {
            JsonResult result = new JsonResult();
            List<PrintType> PrintTypes = new List<PrintType>();

            try
            {
                PrintTypes = AopBLL.GetPrintTypeList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = PrintTypes }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddPrintType(PrintType printType)
        {
            Boolean Result = false;
            try
            {
                int Id = AopBLL.AddPrintType(printType);
                if (Id > 0)
                {
                    printType.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = printType }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeletePrintType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = AopBLL.DeletePrintType(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetMachineTypeList()
        {
            JsonResult result = new JsonResult();
            List<MachineType> MachineTypes = new List<MachineType>();

            try
            {
                MachineTypes = AopBLL.GetMachineTypeList();
            }
            catch (Exception ex)
            {
                // Info
                Console.Write(ex);
            }

            return Json(new { data = MachineTypes }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AddMachineType(MachineType machineType)
        {
            Boolean Result = false;
            try
            {
                int Id = AopBLL.AddMachineType(machineType);
                if (Id > 0)
                {
                    machineType.Id = Id;
                    Result = true;
                }
                else
                {
                    Result = false;
                }

                if (Result)
                {
                    return Json(new { data = machineType }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return View();
            }

            return Json(new { data = "" }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteMachineType(int Id)
        {
            Boolean Result = false;
            try
            {
                if (Id > 0)
                {
                    Result = AopBLL.DeleteMachineType(Id);
                }

                if (Result)
                {
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json("Failed", JsonRequestBehavior.AllowGet);
            }

            return Json("Failed", JsonRequestBehavior.AllowGet);
        }

    }
}
