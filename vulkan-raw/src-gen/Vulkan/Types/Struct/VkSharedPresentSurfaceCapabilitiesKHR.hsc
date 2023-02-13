{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shared_presentable_image

module Vulkan.Types.Struct.VkSharedPresentSurfaceCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSharedPresentSurfaceCapabilitiesKHR" #-} VkSharedPresentSurfaceCapabilitiesKHR =
       VkSharedPresentSurfaceCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sharedPresentSupportedUsageFlags :: VkImageUsageFlags -- ^ Supported image usage flags if swapchain created using a shared present mode
         }

instance Storable VkSharedPresentSurfaceCapabilitiesKHR where
  sizeOf    _ = #{size      VkSharedPresentSurfaceCapabilitiesKHR}
  alignment _ = #{alignment VkSharedPresentSurfaceCapabilitiesKHR}

  peek ptr = 
    VkSharedPresentSurfaceCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sharedPresentSupportedUsageFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sharedPresentSupportedUsageFlags" ptr val

instance Offset "sType" VkSharedPresentSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSharedPresentSurfaceCapabilitiesKHR, sType}

instance Offset "pNext" VkSharedPresentSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSharedPresentSurfaceCapabilitiesKHR, pNext}

instance Offset "sharedPresentSupportedUsageFlags" VkSharedPresentSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSharedPresentSurfaceCapabilitiesKHR, sharedPresentSupportedUsageFlags}

#else

module Vulkan.Types.Struct.VkSharedPresentSurfaceCapabilitiesKHR where

#endif