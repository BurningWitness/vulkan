{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Struct.VkDeviceGroupRenderPassBeginInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupRenderPassBeginInfoKHR" #-} VkDeviceGroupRenderPassBeginInfoKHR =
       VkDeviceGroupRenderPassBeginInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceMask :: #{type uint32_t}
         , deviceRenderAreaCount :: #{type uint32_t}
         , pDeviceRenderAreas :: Ptr VkRect2D
         }

instance Storable VkDeviceGroupRenderPassBeginInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupRenderPassBeginInfoKHR}
  alignment _ = #{alignment VkDeviceGroupRenderPassBeginInfoKHR}

  peek ptr = 
    VkDeviceGroupRenderPassBeginInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceMask" ptr)
       <*> peek (offset @"deviceRenderAreaCount" ptr)
       <*> peek (offset @"pDeviceRenderAreas" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceMask" ptr val
    pokeField @"deviceRenderAreaCount" ptr val
    pokeField @"pDeviceRenderAreas" ptr val

instance Offset "sType" VkDeviceGroupRenderPassBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupRenderPassBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfoKHR, pNext}

instance Offset "deviceMask" VkDeviceGroupRenderPassBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfoKHR, deviceMask}

instance Offset "deviceRenderAreaCount" VkDeviceGroupRenderPassBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfoKHR, deviceRenderAreaCount}

instance Offset "pDeviceRenderAreas" VkDeviceGroupRenderPassBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfoKHR, pDeviceRenderAreas}

#else

module Vulkan.Types.Struct.VkDeviceGroupRenderPassBeginInfoKHR where

#endif