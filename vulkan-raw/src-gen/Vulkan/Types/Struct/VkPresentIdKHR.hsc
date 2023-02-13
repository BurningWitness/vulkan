{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_id

module Vulkan.Types.Struct.VkPresentIdKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPresentIdKHR" #-} VkPresentIdKHR =
       VkPresentIdKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t} -- ^ Copy of VkPresentInfoKHR::swapchainCount
         , pPresentIds :: Ptr #{type uint64_t} -- ^ Present ID values for each swapchain
         }

instance Storable VkPresentIdKHR where
  sizeOf    _ = #{size      VkPresentIdKHR}
  alignment _ = #{alignment VkPresentIdKHR}

  peek ptr = 
    VkPresentIdKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pPresentIds" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pPresentIds" ptr val

instance Offset "sType" VkPresentIdKHR where
  rawOffset = #{offset VkPresentIdKHR, sType}

instance Offset "pNext" VkPresentIdKHR where
  rawOffset = #{offset VkPresentIdKHR, pNext}

instance Offset "swapchainCount" VkPresentIdKHR where
  rawOffset = #{offset VkPresentIdKHR, swapchainCount}

instance Offset "pPresentIds" VkPresentIdKHR where
  rawOffset = #{offset VkPresentIdKHR, pPresentIds}

#else

module Vulkan.Types.Struct.VkPresentIdKHR where

#endif