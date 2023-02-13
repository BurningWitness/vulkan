{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_memory_report

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDeviceMemoryReportFeaturesEXT" #-} VkPhysicalDeviceDeviceMemoryReportFeaturesEXT =
       VkPhysicalDeviceDeviceMemoryReportFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceMemoryReport :: VkBool32
         }

instance Storable VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDeviceMemoryReportFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDeviceMemoryReportFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDeviceMemoryReportFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceMemoryReport" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceMemoryReport" ptr val

instance Offset "sType" VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDeviceMemoryReportFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDeviceMemoryReportFeaturesEXT, pNext}

instance Offset "deviceMemoryReport" VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDeviceMemoryReportFeaturesEXT, deviceMemoryReport}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceMemoryReportFeaturesEXT where

#endif