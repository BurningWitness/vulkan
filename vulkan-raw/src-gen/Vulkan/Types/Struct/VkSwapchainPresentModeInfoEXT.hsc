{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkSwapchainPresentModeInfoEXT}
  alignment _ = #{alignment VkSwapchainPresentModeInfoEXT}

  peek ptr = 
    VkSwapchainPresentModeInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapchainCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPresentModes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pPresentModes" ptr val

instance Offset "sType" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModeInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModeInfoEXT, pNext}

instance Offset "swapchainCount" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModeInfoEXT, swapchainCount}

instance Offset "pPresentModes" VkSwapchainPresentModeInfoEXT where
  rawOffset = #{offset VkSwapchainPresentModeInfoEXT, pPresentModes}

#else

module Vulkan.Types.Struct.VkSwapchainPresentModeInfoEXT where

#endif