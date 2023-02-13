{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceGroupDeviceCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupDeviceCreateInfo" #-} VkDeviceGroupDeviceCreateInfo =
       VkDeviceGroupDeviceCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , physicalDeviceCount :: #{type uint32_t}
         , pPhysicalDevices :: Ptr VkPhysicalDevice
         }

instance Storable VkDeviceGroupDeviceCreateInfo where
  sizeOf    _ = #{size      VkDeviceGroupDeviceCreateInfo}
  alignment _ = #{alignment VkDeviceGroupDeviceCreateInfo}

  peek ptr = 
    VkDeviceGroupDeviceCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"physicalDeviceCount" ptr)
       <*> peek (offset @"pPhysicalDevices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"physicalDeviceCount" ptr val
    pokeField @"pPhysicalDevices" ptr val

instance Offset "sType" VkDeviceGroupDeviceCreateInfo where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfo, sType}

instance Offset "pNext" VkDeviceGroupDeviceCreateInfo where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfo, pNext}

instance Offset "physicalDeviceCount" VkDeviceGroupDeviceCreateInfo where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfo, physicalDeviceCount}

instance Offset "pPhysicalDevices" VkDeviceGroupDeviceCreateInfo where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfo, pPhysicalDevices}

#else

module Vulkan.Types.Struct.VkDeviceGroupDeviceCreateInfo where

#endif