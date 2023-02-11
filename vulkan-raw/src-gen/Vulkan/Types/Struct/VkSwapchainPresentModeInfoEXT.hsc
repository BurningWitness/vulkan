{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkSwapchainPresentModeInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainPresentModeInfoEXT" #-} VkSwapchainPresentModeInfoEXT =
       VkSwapchainPresentModeInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t} -- ^ Copy of VkPresentInfoKHR::swapchainCount
         , pPresentModes :: Ptr VkPresentModeKHR -- ^ Presentation mode for each swapchain
         }

instance Storable VkSwapchainPresentModeInfoEXT where
  sizeOf    _ = #{size      struct VkSwapchainPresentModeInfoEXT}
  alignment _ = #{alignment struct VkSwapchainPresentModeInfoEXT}

  peek ptr = 
    VkSwapchainPresentModeInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pPresentModes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pPresentModes" ptr val

instance Offset "sType" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentModeInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentModeInfoEXT, pNext}

instance Offset "swapchainCount" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentModeInfoEXT, swapchainCount}

instance Offset "pPresentModes" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset struct VkSwapchainPresentModeInfoEXT, pPresentModes}

#else

module Vulkan.Types.Struct.VkSwapchainPresentModeInfoEXT where

#endif