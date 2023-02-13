{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkSubpassBeginInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassContents



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassBeginInfoKHR" #-} VkSubpassBeginInfoKHR =
       VkSubpassBeginInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , contents :: VkSubpassContents
         }

instance Storable VkSubpassBeginInfoKHR where
  sizeOf    _ = #{size      VkSubpassBeginInfoKHR}
  alignment _ = #{alignment VkSubpassBeginInfoKHR}

  peek ptr = 
    VkSubpassBeginInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"contents" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"contents" ptr val

instance Offset "sType" VkSubpassBeginInfoKHR where
  rawOffset = #{offset VkSubpassBeginInfoKHR, sType}

instance Offset "pNext" VkSubpassBeginInfoKHR where
  rawOffset = #{offset VkSubpassBeginInfoKHR, pNext}

instance Offset "contents" VkSubpassBeginInfoKHR where
  rawOffset = #{offset VkSubpassBeginInfoKHR, contents}

#else

module Vulkan.Types.Struct.VkSubpassBeginInfoKHR where

#endif