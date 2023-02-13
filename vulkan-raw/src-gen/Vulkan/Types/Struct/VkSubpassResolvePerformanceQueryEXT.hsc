{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multisampled_render_to_single_sampled

module Vulkan.Types.Struct.VkSubpassResolvePerformanceQueryEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassResolvePerformanceQueryEXT" #-} VkSubpassResolvePerformanceQueryEXT =
       VkSubpassResolvePerformanceQueryEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , optimal :: VkBool32
         }

instance Storable VkSubpassResolvePerformanceQueryEXT where
  sizeOf    _ = #{size      VkSubpassResolvePerformanceQueryEXT}
  alignment _ = #{alignment VkSubpassResolvePerformanceQueryEXT}

  peek ptr = 
    VkSubpassResolvePerformanceQueryEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"optimal" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"optimal" ptr val

instance Offset "sType" VkSubpassResolvePerformanceQueryEXT where
  rawOffset = #{offset VkSubpassResolvePerformanceQueryEXT, sType}

instance Offset "pNext" VkSubpassResolvePerformanceQueryEXT where
  rawOffset = #{offset VkSubpassResolvePerformanceQueryEXT, pNext}

instance Offset "optimal" VkSubpassResolvePerformanceQueryEXT where
  rawOffset = #{offset VkSubpassResolvePerformanceQueryEXT, optimal}

#else

module Vulkan.Types.Struct.VkSubpassResolvePerformanceQueryEXT where

#endif