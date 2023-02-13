{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSubpassBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassContents



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassBeginInfo" #-} VkSubpassBeginInfo =
       VkSubpassBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , contents :: VkSubpassContents
         }

instance Storable VkSubpassBeginInfo where
  sizeOf    _ = #{size      VkSubpassBeginInfo}
  alignment _ = #{alignment VkSubpassBeginInfo}

  peek ptr = 
    VkSubpassBeginInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"contents" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"contents" ptr val

instance Offset "sType" VkSubpassBeginInfo where
  rawOffset = #{offset VkSubpassBeginInfo, sType}

instance Offset "pNext" VkSubpassBeginInfo where
  rawOffset = #{offset VkSubpassBeginInfo, pNext}

instance Offset "contents" VkSubpassBeginInfo where
  rawOffset = #{offset VkSubpassBeginInfo, contents}

#else

module Vulkan.Types.Struct.VkSubpassBeginInfo where

#endif