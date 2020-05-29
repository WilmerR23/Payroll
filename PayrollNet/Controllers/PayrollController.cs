using Payroll.BOL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace PayrollNet.Controllers
{
    [RoutePrefix("api/Payroll")]
    public class PayrollController : ApiController
    {
        private FileManagementService _fMS = new FileManagementService();


        [HttpGet]
        [Route("GenPay/{payrollDate}")]
        public IHttpActionResult GeneratePayrollFile(DateTime payrollDate)
        {
            var mensaje  = $"El archivo con el nombre: {_fMS.GenerateOutPutFile(payrollDate)} fue generado.";
            return Ok(mensaje);
        }

        [HttpGet]
        [Route("ReadPay/{fileName}")]
        public HttpResponseMessage ReadPayrollFile(string fileName)
        {
            var data = _fMS.GetOutPutFile(fileName);
            return new HttpResponseMessage()
            {
                Content = new StringContent(data, Encoding.UTF8, "text/html")
            };
        }
    }
}

