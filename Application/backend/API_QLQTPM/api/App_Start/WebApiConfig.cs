using BaseApplication;
using BusinessLogic;
using BusinessLogicInterface;
using DataAcceessInterface;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Unity;

namespace api
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {

            // Web API DI
            var container = new UnityContainer();

            // TaiKhoan
            container.RegisterType<ITaiKhoanBusinessLogic, TaiKhoanBusinessLogic>();
            container.RegisterType<ITaiKhoanDataAccess, TaiKhoanDataAccess>();


            config.DependencyResolver = new UnityResolver(container);
            // Web API routes
            config.MapHttpAttributeRoutes();
            config.Routes.MapHttpRoute(
                name: "ActionApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
