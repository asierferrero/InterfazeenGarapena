﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace RESTAPI.Models
{
    public class Ardoa
    {
        public int Id { get; set; }
        public string Izena { get; set; }
        public Decimal Salneurria { get; set; }
        public int Alkohola { get; set; }      
        public int Edukia { get; set; }
        public int Urtea { get; set; }
        public string Irudia { get; set; }
        public string Deskribapena { get; set; }
        public int Deskontua { get; set; }
        public bool Eskaintza { get; set; }
        public int UpeltegiaId { get; set; }
        public int MotaId { get; set; }

        [System.Text.Json.Serialization.JsonIgnore]
        public virtual Upeltegia Upeltegia { get; set; }

        [System.Text.Json.Serialization.JsonIgnore]
        public virtual Mota Mota { get; set; }
    }
}
