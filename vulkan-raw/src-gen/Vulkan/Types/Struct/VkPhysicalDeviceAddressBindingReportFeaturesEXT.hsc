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
  sizeOf    _ = #{size      struct VkPhysicalDeviceAddressBindingReportFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceAddressBindingReportFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceAddressBindingReportFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"reportAddressBinding" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"reportAddressBinding" ptr val

instance Offset "sType" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceAddressBindingReportFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceAddressBindingReportFeaturesEXT, pNext}

instance Offset "reportAddressBinding" VkPhysicalDeviceAddressBindingReportFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceAddressBindingReportFeaturesEXT, reportAddressBinding}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAddressBindingReportFeaturesEXT where

#endif