{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_fragment_density_map_offset

module Vulkan.Types.Struct.VkSubpassFragmentDensityMapOffsetEndInfoQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassFragmentDensityMapOffsetEndInfoQCOM" #-} VkSubpassFragmentDensityMapOffsetEndInfoQCOM =
       VkSubpassFragmentDensityMapOffsetEndInfoQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityOffsetCount :: #{type uint32_t}
         , pFragmentDensityOffsets :: Ptr VkOffset2D
         }

instance Storable VkSubpassFragmentDensityMapOffsetEndInfoQCOM where
  sizeOf    _ = #{size      VkSubpassFragmentDensityMapOffsetEndInfoQCOM}
  alignment _ = #{alignment VkSubpassFragmentDensityMapOffsetEndInfoQCOM}

  peek ptr = 
    VkSubpassFragmentDensityMapOffsetEndInfoQCOM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentDensityOffsetCount" ptr)
       <*> peek (offset @"pFragmentDensityOffsets" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityOffsetCount" ptr val
    pokeField @"pFragmentDensityOffsets" ptr val

instance Offset "sType" VkSubpassFragmentDensityMapOffsetEndInfoQCOM where
  rawOffset = #{offset VkSubpassFragmentDensityMapOffsetEndInfoQCOM, sType}

instance Offset "pNext" VkSubpassFragmentDensityMapOffsetEndInfoQCOM where
  rawOffset = #{offset VkSubpassFragmentDensityMapOffsetEndInfoQCOM, pNext}

instance Offset "fragmentDensityOffsetCount" VkSubpassFragmentDensityMapOffsetEndInfoQCOM where
  rawOffset = #{offset VkSubpassFragmentDensityMapOffsetEndInfoQCOM, fragmentDensityOffsetCount}

instance Offset "pFragmentDensityOffsets" VkSubpassFragmentDensityMapOffsetEndInfoQCOM where
  rawOffset = #{offset VkSubpassFragmentDensityMapOffsetEndInfoQCOM, pFragmentDensityOffsets}

#else

module Vulkan.Types.Struct.VkSubpassFragmentDensityMapOffsetEndInfoQCOM where

#endif