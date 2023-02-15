{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_memory_report

module Vulkan.Types.Struct.VkDeviceDeviceMemoryReportCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceMemoryReportFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer.PFN_vkDeviceMemoryReportCallbackEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceDeviceMemoryReportCreateInfoEXT" #-} VkDeviceDeviceMemoryReportCreateInfoEXT =
       VkDeviceDeviceMemoryReportCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceMemoryReportFlagsEXT
         , pfnUserCallback :: FunPtr PFN_vkDeviceMemoryReportCallbackEXT
         , pUserData :: Ptr ()
         }

instance Storable VkDeviceDeviceMemoryReportCreateInfoEXT where
  sizeOf    _ = #{size      VkDeviceDeviceMemoryReportCreateInfoEXT}
  alignment _ = #{alignment VkDeviceDeviceMemoryReportCreateInfoEXT}

  peek ptr = 
    VkDeviceDeviceMemoryReportCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnUserCallback" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pfnUserCallback" ptr val
    pokeField @"pUserData" ptr val

instance Offset "sType" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset VkDeviceDeviceMemoryReportCreateInfoEXT, sType}

instance Offset "pNext" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset VkDeviceDeviceMemoryReportCreateInfoEXT, pNext}

instance Offset "flags" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset VkDeviceDeviceMemoryReportCreateInfoEXT, flags}

instance Offset "pfnUserCallback" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset VkDeviceDeviceMemoryReportCreateInfoEXT, pfnUserCallback}

instance Offset "pUserData" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset VkDeviceDeviceMemoryReportCreateInfoEXT, pUserData}

#else

module Vulkan.Types.Struct.VkDeviceDeviceMemoryReportCreateInfoEXT where

#endif