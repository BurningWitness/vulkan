{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkSamplerYcbcrConversionInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionInfo" #-} VkSamplerYcbcrConversionInfo =
       VkSamplerYcbcrConversionInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , conversion :: VkSamplerYcbcrConversion
         }

instance Storable VkSamplerYcbcrConversionInfo where
  sizeOf    _ = #{size      struct VkSamplerYcbcrConversionInfo}
  alignment _ = #{alignment struct VkSamplerYcbcrConversionInfo}

  peek ptr = 
    VkSamplerYcbcrConversionInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"conversion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"conversion" ptr val

instance Offset "sType" VkSamplerYcbcrConversionInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionInfo, sType}

instance Offset "pNext" VkSamplerYcbcrConversionInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionInfo, pNext}

instance Offset "conversion" VkSamplerYcbcrConversionInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionInfo, conversion}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionInfo where

#endif