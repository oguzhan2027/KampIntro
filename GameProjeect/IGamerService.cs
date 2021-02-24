using System;
using System.Collections.Generic;
using System.Text;

namespace GameProjeect
{
    interface IGamerService
    {
        void Add(Gamer gamer);
        void Updatae(Gamer gamer);
        void Delete(Gamer gamer);
    }
}
