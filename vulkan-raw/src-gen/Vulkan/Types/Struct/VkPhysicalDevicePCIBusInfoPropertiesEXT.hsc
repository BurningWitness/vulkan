{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pci_bus_info

module Vulkan.Types.Struct.VkPhysicalDevicePCIBusInfoPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePCIBusInfoPropertiesEXT" #-} VkPhysicalDevicePCIBusInfoPropertiesEXT =
       VkPhysicalDevicePCIBusInfoPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pciDomain :: #{type uint32_t}
         , pciBus :: #{type uint32_t}
         , pciDevice :: #{type uint32_t}
         , pciFunction :: #{type uint32_t}
         }

instance Storable VkPhysicalDevicePCIBusInfoPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePCIBusInfoPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDevicePCIBusInfoPropertiesEXT}

  peek ptr = 
    VkPhysicalDevicePCIBusInfoPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pciDomain" ptr)
       <*> peek (offset @"pciBus" ptr)
       <*> peek (offset @"pciDevice" ptr)
       <*> peek (offset @"pciFunction" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pciDomain" ptr val
    pokeField @"pciBus" ptr val
    pokeField @"pciDevice" ptr val
    pokeField @"pciFunction" ptr val

instance Offset "sType" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, pNext}

instance Offset "pciDomain" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, pciDomain}

instance Offset "pciBus" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, pciBus}

instance Offset "pciDevice" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, pciDevice}

instance Offset "pciFunction" VkPhysicalDevicePCIBusInfoPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePCIBusInfoPropertiesEXT, pciFunction}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePCIBusInfoPropertiesEXT where

#endif