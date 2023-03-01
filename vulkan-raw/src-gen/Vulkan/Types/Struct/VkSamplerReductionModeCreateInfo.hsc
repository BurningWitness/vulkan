{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSamplerReductionModeCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSamplerReductionMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerReductionModeCreateInfo" #-} VkSamplerReductionModeCreateInfo =
       VkSamplerReductionModeCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , reductionMode :: VkSamplerReductionMode
         }

instance Storable VkSamplerReductionModeCreateInfo where
  sizeOf    _ = #{size      VkSamplerReductionModeCreateInfo}
  alignment _ = #{alignment VkSamplerReductionModeCreateInfo}

  peek ptr = 
    VkSamplerReductionModeCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"reductionMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"reductionMode" ptr val

instance Offset "sType" VkSamplerReductionModeCreateInfo where
  rawOffset = #{offset VkSamplerReductionModeCreateInfo, sType}

instance Offset "pNext" VkSamplerReductionModeCreateInfo where
  rawOffset = #{offset VkSamplerReductionModeCreateInfo, pNext}

instance Offset "reductionMode" VkSamplerReductionModeCreateInfo where
  rawOffset = #{offset VkSamplerReductionModeCreateInfo, reductionMode}

#else

module Vulkan.Types.Struct.VkSamplerReductionModeCreateInfo where

#endif