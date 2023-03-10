{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive

module Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFullScreenExclusiveEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceFullScreenExclusiveInfoEXT" #-} VkSurfaceFullScreenExclusiveInfoEXT =
       VkSurfaceFullScreenExclusiveInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fullScreenExclusive :: VkFullScreenExclusiveEXT
         }

instance Storable VkSurfaceFullScreenExclusiveInfoEXT where
  sizeOf    _ = #{size      VkSurfaceFullScreenExclusiveInfoEXT}
  alignment _ = #{alignment VkSurfaceFullScreenExclusiveInfoEXT}

  peek ptr = 
    VkSurfaceFullScreenExclusiveInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fullScreenExclusive" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fullScreenExclusive" ptr val

instance Offset "sType" VkSurfaceFullScreenExclusiveInfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveInfoEXT, sType}

instance Offset "pNext" VkSurfaceFullScreenExclusiveInfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveInfoEXT, pNext}

instance Offset "fullScreenExclusive" VkSurfaceFullScreenExclusiveInfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveInfoEXT, fullScreenExclusive}

#else

module Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveInfoEXT where

#endif