{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264SessionParametersCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH264SessionParametersAddInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264SessionParametersCreateInfoEXT" #-} VkVideoEncodeH264SessionParametersCreateInfoEXT =
       VkVideoEncodeH264SessionParametersCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxStdSPSCount :: #{type uint32_t}
         , maxStdPPSCount :: #{type uint32_t}
         , pParametersAddInfo :: Ptr VkVideoEncodeH264SessionParametersAddInfoEXT
         }

instance Storable VkVideoEncodeH264SessionParametersCreateInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264SessionParametersCreateInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264SessionParametersCreateInfoEXT}

  peek ptr = 
    VkVideoEncodeH264SessionParametersCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxStdSPSCount" ptr)
       <*> peek (offset @"maxStdPPSCount" ptr)
       <*> peek (offset @"pParametersAddInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxStdSPSCount" ptr val
    pokeField @"maxStdPPSCount" ptr val
    pokeField @"pParametersAddInfo" ptr val

instance Offset "sType" VkVideoEncodeH264SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersCreateInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersCreateInfoEXT, pNext}

instance Offset "maxStdSPSCount" VkVideoEncodeH264SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersCreateInfoEXT, maxStdSPSCount}

instance Offset "maxStdPPSCount" VkVideoEncodeH264SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersCreateInfoEXT, maxStdPPSCount}

instance Offset "pParametersAddInfo" VkVideoEncodeH264SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersCreateInfoEXT, pParametersAddInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264SessionParametersCreateInfoEXT where

#endif