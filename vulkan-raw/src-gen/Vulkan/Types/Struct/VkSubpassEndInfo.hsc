{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSubpassEndInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassEndInfo" #-} VkSubpassEndInfo =
       VkSubpassEndInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         }

instance Storable VkSubpassEndInfo where
  sizeOf    _ = #{size      VkSubpassEndInfo}
  alignment _ = #{alignment VkSubpassEndInfo}

  peek ptr = 
    VkSubpassEndInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkSubpassEndInfo where
  rawOffset = #{offset VkSubpassEndInfo, sType}

instance Offset "pNext" VkSubpassEndInfo where
  rawOffset = #{offset VkSubpassEndInfo, pNext}

#else

module Vulkan.Types.Struct.VkSubpassEndInfo where

#endif