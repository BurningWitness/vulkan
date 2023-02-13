{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_address_binding_report

module Vulkan.Types.Struct.VkPhysicalDeviceAddressBindingReportFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceAddressBindingReportFeaturesEXT" #-} VkPhysicalDeviceAddressBindingReportFeaturesEXT =
       VkPhysicalDeviceAddressBindingReportFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , reportAddressBinding :: VkBool32
         }

instance Storable VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceAddressBindingReportFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceAddressBindingReportFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceAddressBindingReportFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"reportAddressBinding" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"reportAddressBinding" ptr val

instance Offset "sType" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAddressBindingReportFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAddressBindingReportFeaturesEXT, pNext}

instance Offset "reportAddressBinding" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceAddressBindingReportFeaturesEXT, reportAddressBinding}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAddressBindingReportFeaturesEXT where

#endif