{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkSubpassEndInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassEndInfoKHR" #-} VkSubpassEndInfoKHR =
       VkSubpassEndInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         }

instance Storable VkSubpassEndInfoKHR where
  sizeOf    _ = #{size      VkSubpassEndInfoKHR}
  alignment _ = #{alignment VkSubpassEndInfoKHR}

  peek ptr = 
    VkSubpassEndInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkSubpassEndInfoKHR where
  rawOffset = #{offset VkSubpassEndInfoKHR, sType}

instance Offset "pNext" VkSubpassEndInfoKHR where
  rawOffset = #{offset VkSubpassEndInfoKHR, pNext}

#else

module Vulkan.Types.Struct.VkSubpassEndInfoKHR where

#endif