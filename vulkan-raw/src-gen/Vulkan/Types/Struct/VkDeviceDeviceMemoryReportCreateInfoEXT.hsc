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
import Vulkan.Types.FuncPointer



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceDeviceMemoryReportCreateInfoEXT" #-} VkDeviceDeviceMemoryReportCreateInfoEXT =
       VkDeviceDeviceMemoryReportCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceMemoryReportFlagsEXT
         , pfnUserCallback :: FunPtr PFN_vkDeviceMemoryReportCallbackEXT
         , pUserData :: Ptr ()
         }

instance Storable VkDeviceDeviceMemoryReportCreateInfoEXT where
  sizeOf    _ = #{size      struct VkDeviceDeviceMemoryReportCreateInfoEXT}
  alignment _ = #{alignment struct VkDeviceDeviceMemoryReportCreateInfoEXT}

  peek ptr = 
    VkDeviceDeviceMemoryReportCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pfnUserCallback" ptr)
       <*> peek (offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pfnUserCallback" ptr val
    pokeField @"pUserData" ptr val

instance Offset "sType" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset struct VkDeviceDeviceMemoryReportCreateInfoEXT, sType}

instance Offset "pNext" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset struct VkDeviceDeviceMemoryReportCreateInfoEXT, pNext}

instance Offset "flags" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset struct VkDeviceDeviceMemoryReportCreateInfoEXT, flags}

instance Offset "pfnUserCallback" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset struct VkDeviceDeviceMemoryReportCreateInfoEXT, pfnUserCallback}

instance Offset "pUserData" VkDeviceDeviceMemoryReportCreateInfoEXT where
  rawOffset = #{offset struct VkDeviceDeviceMemoryReportCreateInfoEXT, pUserData}

#else

module Vulkan.Types.Struct.VkDeviceDeviceMemoryReportCreateInfoEXT where

#endif