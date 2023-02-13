{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkPhysicalDeviceFaultFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFaultFeaturesEXT" #-} VkPhysicalDeviceFaultFeaturesEXT =
       VkPhysicalDeviceFaultFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceFault :: VkBool32
         , deviceFaultVendorBinary :: VkBool32
         }

instance Storable VkPhysicalDeviceFaultFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceFaultFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFaultFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceFaultFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceFault" ptr)
       <*> peek (offset @"deviceFaultVendorBinary" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceFault" ptr val
    pokeField @"deviceFaultVendorBinary" ptr val

instance Offset "sType" VkPhysicalDeviceFaultFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFaultFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFaultFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFaultFeaturesEXT, pNext}

instance Offset "deviceFault" VkPhysicalDeviceFaultFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFaultFeaturesEXT, deviceFault}

instance Offset "deviceFaultVendorBinary" VkPhysicalDeviceFaultFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFaultFeaturesEXT, deviceFaultVendorBinary}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFaultFeaturesEXT where

#endif