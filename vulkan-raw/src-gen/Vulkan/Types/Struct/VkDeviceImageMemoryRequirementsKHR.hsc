{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Struct.VkDeviceImageMemoryRequirementsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceImageMemoryRequirementsKHR" #-} VkDeviceImageMemoryRequirementsKHR =
       VkDeviceImageMemoryRequirementsKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pCreateInfo :: Ptr VkImageCreateInfo
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkDeviceImageMemoryRequirementsKHR where
  sizeOf    _ = #{size      VkDeviceImageMemoryRequirementsKHR}
  alignment _ = #{alignment VkDeviceImageMemoryRequirementsKHR}

  peek ptr = 
    VkDeviceImageMemoryRequirementsKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCreateInfo" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pCreateInfo" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkDeviceImageMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceImageMemoryRequirementsKHR, sType}

instance Offset "pNext" VkDeviceImageMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceImageMemoryRequirementsKHR, pNext}

instance Offset "pCreateInfo" VkDeviceImageMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceImageMemoryRequirementsKHR, pCreateInfo}

instance Offset "planeAspect" VkDeviceImageMemoryRequirementsKHR where
  rawOffset = #{offset VkDeviceImageMemoryRequirementsKHR, planeAspect}

#else

module Vulkan.Types.Struct.VkDeviceImageMemoryRequirementsKHR where

#endif