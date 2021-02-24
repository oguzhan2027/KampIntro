using System;
using System.Collections.Generic;
using System.Text;

namespace GameProjeect
{
    //microservice
    class GamerManager : IGamerService
    {
        IUserValidationService userValidationService;

        public GamerManager(IUserValidationService userValidationService)
        {
            this.userValidationService = userValidationService;
        }

        public void Add(Gamer gamer)
        {
            if (this.userValidationService.Validate(gamer)==true)
            {
                Console.WriteLine("kayıt oldu");
            }
            else
            {
                Console.WriteLine("Doğrıulama başarışız");
            }
            
        }

        public void Delete(Gamer gamer)
        {
            Console.WriteLine("kayıt silindi");
        }

        public void Updatae(Gamer gamer)
        {
            Console.WriteLine("kayıt güncelendi");
        }
    }
}
