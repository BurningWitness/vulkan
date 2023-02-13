{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkSwapchainPresentFenceInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainPresentFenceInfoEXT" #-} VkSwapchainPresentFenceInfoEXT =
       VkSwapchainPresentFenceInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t} -- ^ Copy of VkPresentInfoKHR::swapchainCount
         , pFences :: Ptr VkFence -- ^ Fence to signal for each swapchain
         }

instance Storable VkSwapchainPresentFenceInfoEXT where
  sizeOf    _ = #{size      VkSwapchainPresentFenceInfoEXT}
  alignment _ = #{alignment VkSwapchainPresentFenceInfoEXT}

  peek ptr = 
    VkSwapchainPresentFenceInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapchainCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pFences" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pFences" ptr val

instance Offset "sType" VkSwapchainPresentFenceInfoEXT where
  rawOffset = #{offset VkSwapchainPresentFenceInfoEXT, sType}

instance Offset "pNext" VkSwapchainPresentFenceInfoEXT where
  rawOffset = #{offset VkSwapchainPresentFenceInfoEXT, pNext}

instance Offset "swapchainCount" VkSwapchainPresentFenceInfoEXT where
  rawOffset = #{offset VkSwapchainPresentFenceInfoEXT, swapchainCount}

instance Offset "pFences" VkSwapchainPresentFenceInfoEXT where
  rawOffset = #{offset VkSwapchainPresentFenceInfoEXT, pFences}

#else

module Vulkan.Types.Struct.VkSwapchainPresentFenceInfoEXT where

#endif